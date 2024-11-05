Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C1015CD74
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730828753; cv=none; b=uoni6P35J5ImcLmsQ81ML5WiGZV+R0tlyfhLwGqPlVfBuIYG+WBnCrRE/RRYeBeFfy15I+B1JQm3881/qyOAJSR4ooae9lHrgprdS3PnFalnS3vKwZ6h/NkELRReREn4UwvKroNsp4v0/fOyf1bS5DUnJtsgQ19EzXyCqhz9Q3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730828753; c=relaxed/simple;
	bh=+9TJl1xUK2InJUBS9bLF3FfmH1HQKi3WP1rLBFx1eVQ=;
	h=To:Subject:From:Message-Id:Date; b=Yah+Y2UF9r6lTDhicdC/9jFTZXvX03qoAOJR25O3cZ9vguM8NU+uobSyN58Ndg8f2hfX02e+F0ZDxDWZcKvZUQNh/CcMBJFKgM5C4O6OsLooMAjVZh3Q7IrTQK3Iwq7LRfJsgRuU0NO+YCob7oqHjyvRO8bQZ81p1wPJ1jvYX5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqvFuVyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqvFuVyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B46C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730828753;
	bh=+9TJl1xUK2InJUBS9bLF3FfmH1HQKi3WP1rLBFx1eVQ=;
	h=To:Subject:From:Date:From;
	b=XqvFuVyFTwtDFayRv1HyJp07Soog8k4pqFePkFt516xmfynR3lMWkDHj1taoLFoza
	 V4qu1ESsxoMwUMIbK47szo8Srp9vIxwJC7OTmvtHm1e6PsvzRx9a9oDKDhm2xi3VOw
	 068hYs8KQp2M8BrZMUlxQKGaOSUmEYQyRNAJh62wzFrTSXeZ50zQCFLdJdRNXvcNQT
	 C9wnBYGxABZp9rndMKMd5NpuMjGz/+5/2hXXvL3fP2caPdBQdICq4JMRH/DgDQ60Lo
	 NsOd7fumDmlyKUq6j9KAePQqG2bnwWCjTVSWyXAdZJkU8hLCSj2YfEMsj0F1YffvK0
	 enYsuPVvvXB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E32D3176C
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173082875360.15399.11940868865074757965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3545f04abd7122065925225122ae0e82962fb5a84d087ff620e6bc7e208549
Date: Tue, 05 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730828753
