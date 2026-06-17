Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACB113A1C9
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781657794; cv=none; b=bzbZLpqLiHKFIAGs1KkGSJGsXtIGoM5St2TskI/ah0A1Zu5tCn2QkBAmNSm+eRFcFgEuix9rt7wAi/TOPnUwojGWJIJnDUOigMH+tzNod/MlyHWaj8hGw8LpnkgRFTSEEAef9UiUAtZgkZ+6AsAMtF0xGG0bpNoXoskSGCRAfEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781657794; c=relaxed/simple;
	bh=3o81dUU3uh/rDm02jT0sYnmk2o7i0FiwNtT7MaJU1f0=;
	h=To:Subject:From:Message-Id:Date; b=qJ/Go3N9tko2yrMR3HHmkN3SDvARzH4kHFq58k8ea+SaCbnJEj8v5Vv0QtPcLrr1YBPUEejD6/4RqHZbQxu1GRszF06NyOCx8gzkyJCdl3i2gRll2Eg56Grlo7Lac6SGgDWLd74QoZZeAj85SjL1z87s2i3FgJOKLq8RndTQdFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujxW7Cqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujxW7Cqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EACC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781657793;
	bh=3o81dUU3uh/rDm02jT0sYnmk2o7i0FiwNtT7MaJU1f0=;
	h=To:Subject:From:Date:From;
	b=ujxW7CqiVkyLqtOV4S/dHDDaZrBw/wmcoEM+qEmhMgitcxMlzThIFmFsCpuuA8W1d
	 CNImtcntHDa5rDktx8JKwef3lTMulrDC2IfD9MQwc/jLcR45tgwegLA025YgWnknMr
	 oaZud45HifMCtK2hr+tyz6MGDfRU0Ho6XMkrMI6/0RvvQ0vv5IeG0xz0hahYUKsqle
	 OJqLCaGcgavMJ6o1pK+x9Gp0oxLGFcGf9EB+64B0X8YqVRNDQCZBebrRj52BYCYfTt
	 LLrCSIlkg4g+ogVpK6uqx5TGGgkCFdb+Jm91CxKARyQBH+lsnmtCjzW0vbG4K6TuvZ
	 WjZUwjbJjO/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD187CD98D2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165779368.24110.11389819787838531502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36be6e8cb8fdaa17bd74c285557e1e03967b348592136738a208ed1cf0650625
Date: Wed, 17 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781657793
