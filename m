Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125921C7009
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749290394; cv=none; b=K4s1rB4EHe4h32ty68VhB4mxUlgnEnRZpxNfj1i3pauke4fCyFIu0mFJQIZulp5+nvm1UVRXPz5m1qSOqXajV29LpPB1jhMtT1li+QIzlOhhvnVP/5IjO+I6/zOaMBhw7gjL5s6M2pEtCStDcwID1PME16BAE8/JceOD0Wh49cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749290394; c=relaxed/simple;
	bh=6JA7vZ4LuLY9EkSbfoD7Vnk++HahmfeIPzLDsNkJJj8=;
	h=To:Subject:From:Message-Id:Date; b=nPJ5RfySiscaLXaqJYFuOQJZhYU+7HxOVT/m9K2L9KUiGLlF0xn6QJn85kCDu4/vPUoJZKZstHxvDFSb1CiX9pEK9ZkfGyXFLZeh4TEDXs/5nB5C622qXO3SQgylpMHHggdQW5K5r6ihi0trJZn/qKspn3VP5u1oZfoI80F0GkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvOClapx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvOClapx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D69C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749290393;
	bh=6JA7vZ4LuLY9EkSbfoD7Vnk++HahmfeIPzLDsNkJJj8=;
	h=To:Subject:From:Date:From;
	b=VvOClapxeGWdfKZ+8NpWuGEgLTie9yGxSsyEhBiB/z0LxDx2W+vvEirLU5T53qS53
	 RAkBrIjHBwYQ4eCoUDkq7fQayxkt8To74LoI6cDOZ9SdpLjmvfDuqfA/avMlOfdQp3
	 mdjbzNeDZepUEu5WKPQ/I8YiiOUDKTm+SjPMudCM0IBHUW/iWwKStNiJGqr9kyUrOk
	 9ErT80zOqGS8tdMZpDVrugWhPQkkUf1ZhMTTSY8loArjCnTVf76ZhumenlAsPhvPVF
	 IWttzr/RLRe14idDa7oN2VqeWkwtgDMBd2C6xIoFZSzX6zG1QNKXtAbr+8KE96HDsJ
	 Y7zodmijLMIgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9422BC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929039357.14125.8636060853570339762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5fc17412447b1710a31047b76cdfe8dbd80c7cd743268c54edc2ee49ad0f09
Date: Sat, 07 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749290393
