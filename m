Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D68DDC5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766892234; cv=none; b=QDMQt9bLqP8BH5/X3bjodKVkyKSwCwMy8cnKePIj2de2z64CJgEHgj8ijexSPPLJWojcL8Whla+eXvwPBmli+xR5iA9bu9nwkw5lLkxqW32hYz3aUdsA3lKwG5CpVLA22MQZBFCtAZGl0wMlgFYT0noUaG+YNfVZDvVDH/a5Jf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766892234; c=relaxed/simple;
	bh=eBeK2nPqDEpx3iBEMOcEKBjB66a0h4WyFYVaKC/pj4M=;
	h=To:Subject:From:Message-Id:Date; b=h9HMG28ZZf2EPt2MZe/PjK/pw5rnHxNUYNgf0OSl5kcZeZitnnyvIhFaN5qCFen8PUAJDHw3U/s/OmZNrmEMyVQ22y7Hx269yguX9/FlVVeporXchzgdad0Z20Bs0D88sgY2B+vTmbwbFJZXLjrMEpEPDPH5K9D2iXJ6Hkk1I0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfaRecFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfaRecFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CD1C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766892233;
	bh=eBeK2nPqDEpx3iBEMOcEKBjB66a0h4WyFYVaKC/pj4M=;
	h=To:Subject:From:Date:From;
	b=gfaRecFqPP5ZbXJ2KMDGXX8Bnc0o3qBIe6pb04FSiAJwygm3GEdWh1OjysntME+wl
	 GCzEuOqgVgTcyacbbjr0plPR0HRWzHhwLZS/oODkIEDBLSkzARcqkKXZSbgZHXSwMe
	 DpSbw+OgoN000jSkWvSeJN/jYZb+vfH6Dm3s2nI6j7YTXhiiHJLrdjWbJiKkB8m5bi
	 3qaV66rTyaRgT8xNM1ESCrVNJnOefWjYZnJHK03PaV5i6kLBFSPXyjx+z8nMcQWmUJ
	 CbzUED1dunzg8l/OLTWjJBZYVvFsUMtvtCupXnL0ah8cABcOp2UHSXuw6Wd1oJ77zF
	 zKzoLkGPJ2YSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E3DE9271B
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689223362.24763.16973378860130326560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b195a0d8de39ce318cb2b3b92dd6ea9295eb511cb062e5f7d22bcf585a53d7c
Date: Sun, 28 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766892233
