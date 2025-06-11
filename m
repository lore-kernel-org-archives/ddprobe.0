Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A80226E6FF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749644394; cv=none; b=gRKIom6/NolSkBDNtxAzyl56Jpfh5VCORUWVe0W4kZA90p1rqHMbqXkgMi9BONMlymIAlWmsRqPqjNlPFXTaZvPUPMaJ01CtGAcfX9eOJdL7+QZu3NvRqPGH0pZ8knYkIdzi6CpT2rQsMnQOhFTy97IMHwUZEZWaC/rrO5FTDYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749644394; c=relaxed/simple;
	bh=o9McGaCoxsIYCvFam16IpeSQU73A82bQXrM6aKMMSyQ=;
	h=To:Subject:From:Message-Id:Date; b=p9Yqq7fKQT3Q+qjsDgHkSsAMP3eJMu9LlEt418iLsq0gMzwNvp6MMbhmZcxbFyGzuqscurM5KcIjtHN+ysj7f2XZmO/ekeA/JWQko1+k4WfBRQGKfuTGKSd2Oj2OZ25rZAK+FJwYuKxk1y8uy2LmKfq2gTTmPnE7V4vx0MtQsLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnkmhXTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnkmhXTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3340C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749644393;
	bh=o9McGaCoxsIYCvFam16IpeSQU73A82bQXrM6aKMMSyQ=;
	h=To:Subject:From:Date:From;
	b=OnkmhXTB6JXUtctTtz4grpGLGe6HlBqAqRTJsrKMgzoslmrHqPXR6DkcRIrsmV7tE
	 GAt5DkgFOt11HQvFj4oVmumhoDJDIBDAtN7XwUMy2ukjpWhZIQKfPhdn7F7eH9Lrf5
	 6B+ieifrazTB9Y6QoH2MUmJnSrtq0T4DNuYolR7CPzU8EF9FtHUGwZGHbeO/nGkrtz
	 AqosdHs50NS6wGrWgtVlKBIdNjJiJocvvic4yjTsXaYtl7Gv0Ghg8G9sMPFq9dYhXa
	 IwC/FKFgFuMloe9qvgQUoME5y8bj/VR9DE4eUdzm9rmxAsyEOdc1f1PHTYlXxM61gr
	 GOYH7K3IGOpfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A66C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964439358.14207.451331398536463863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8281bb0e7483ac97946c14ac3fb5f91f0072c3361704bde880ad07cb5facd563
Date: Wed, 11 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749644393
