Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1762F0C46
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766472234; cv=none; b=P7ChYNZZQ8XL+ngOefUvCCUezmmeAtzCedC/nyQ1Zyl84UXZzbJ5uid1l57jPyPZlLyBJKVFOzdKVJfOQE8h7Da+bc+qlqz4iKx9PbWyM16tLQh0fpq3o6edJbwHEKS/i8ChVXv7wVvVBCk61u5y0qWXTOjNRcdxBzQS6cWhOUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766472234; c=relaxed/simple;
	bh=PEQJWLuTT1acO3B5U9DBJxVbEbHXziLPvtwWslogvUU=;
	h=To:Subject:From:Message-Id:Date; b=NsLOuuHOHbzMaPfqwFwgaG80QZGyHHJL2HTIaj5VVtV/ZWwIzdiTcfbB3JUTJNOafpQFQMYsctaDPXp6mPNxcFZFYwHmr23AIs4j6eCWOrnPYB4EKxwNABelVzklJFYQnyF+k+2f/lsgf8KNmEFp7wmxWBwEReCT5396x7Kf9gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU9gYJmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU9gYJmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6012C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766472233;
	bh=PEQJWLuTT1acO3B5U9DBJxVbEbHXziLPvtwWslogvUU=;
	h=To:Subject:From:Date:From;
	b=bU9gYJmhGDjThvcIOFEnfMRt4yzZZHRsaRS2UDV73sKknFgHYReiUr0NvPX23ZLuR
	 1+uc9cYJDNctbOt1WFK0L+qjDZ3cNjpNnrEVyFcbqeKWcC/lOYoZ6DnFhsbgzryrbG
	 NEhxs4vRfTSb12eqXPQnFUZdGedgHJYGUQAson4S49XUr+VMdyf7bA7tloP1Vrfg2t
	 4OfV60L+FBIUmt6g++A75BnEMUi4EyDer2AljH96lboythZzlh52dfXSQSCEBR6chk
	 QOGAnLnLrjwSiFu0Cwsum36aO+AnHkQa6IkEKtkFqLlLcGF/QXY2no0D0ay1tMDNQW
	 dMPFXlGjBwMcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94538E6C5F8
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647223357.19586.13138737142392959329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947d7590557444bc121777d54770419f53b3e50a36c3786ff20b347dde669fab
Date: Tue, 23 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766472233
