Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0B93ECBF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773077094; cv=none; b=t1vQrnrZN065RfeFaFKSFeWcg/DluzBo7/MTSEyHn7edjlziOQzV8P19oHeRT7Wd2z5VLwyeK2xbU0lZ1QC7qk5m5g4hom1L8LIhoEwYHAbIgm5Lt+lxmbuur+ZHSk8TMVv5jqM1jERbNcq+856i5soJPCtiNhmmqRaOFn1ghMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773077094; c=relaxed/simple;
	bh=NcndAPJXLhPH/hTJr9G4MiYrwSM6zN/wEyFgR3giXMA=;
	h=To:Subject:From:Message-Id:Date; b=tx8M3JkIWSeuk95eR7KCQkijBwSjROCuKTyB8bJZV8J58nlvFiQmY2UuVHzUslXI4SRD55u/CgbSFudb0FWaRr/2kk0ek2HOpIyPQ8dQFAOY5JXmQnuthPr2cpM1c9ZpuW/H21p7DcdD9REgenEwYnPKMxNj+WUpoi3J1Z8/5Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3rFSfxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3rFSfxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA38C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773077093;
	bh=NcndAPJXLhPH/hTJr9G4MiYrwSM6zN/wEyFgR3giXMA=;
	h=To:Subject:From:Date:From;
	b=c3rFSfxwS7SBDxAGMFbWwB+KMWwbj5P4lQr5uV/iUf7r9AjKOH7/lOS3t7Ku1b1Uv
	 itqcfUjtiCfFOtYGTGKRzoR33ML4hyGgRFYiXH2eDQidYQYyKa/O7FPrsHWktghopA
	 CoqGg9FNjdcu8DIz5SvTV8bUogPmMT4Sxffk2Xc4Cbvz2BdeoUwClvaneJTmrZqaMY
	 oyAaMBNWPFPZbWwpxLPGgAJX4rGsokhp6jzoiJMzCa9VYBz+Ub2smNuGiXuS9dBwh9
	 43NLwBDLLROewcT9DlCh7Kl/Gzd85yHe6dDtGuOxtzZChS+qSEdI7MUfTng+xqBkwd
	 dv0pqjgGdhT7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66AF4181F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307709357.32584.17127765846690025691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc30dd2a25cbff9c2f94b3185f711889686098d14e3edfa9378adf7122a15173
Date: Mon, 09 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773077093
