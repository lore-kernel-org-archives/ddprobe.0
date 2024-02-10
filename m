Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C15C63B3
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707554897; cv=none; b=Pb7KxHQFcfb8s4UXtQyu7ojR5PiQo8WK30IpB+vogKAETqQRzubG6RUs/qmoDZjMXgwpkyxpVvcQpDIbXXsU+ofbRByKuexG/+QQ2ZywffRh5bdhuxzic2PLTY3/iQ2vj0xQwkT9Lp+cdu4IId2qh5+Awt6/GIN14kDc/JPdQTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707554897; c=relaxed/simple;
	bh=8I5m/w5mxajnJk+OhY5A7NQqa86DRXXAGXrjj4NB4j4=;
	h=To:Subject:From:Message-Id:Date; b=I/STS+6Gp+vXiFQ2jto0KMQbEG3N7SjGoymGYm40uK/eInlqyPwAn9Ts0aSzAiUflLGZYUi0Yn+pb5Ei+TBuyqHjUgw0P6tqBu9QpXmv2okNGMEWyRuSYEKzYSh3gOeBsti3ZYy7KAlB/yd0cVo7Y8VPNI0pp0GrScrrkkx2btU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTyJEUpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTyJEUpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 757B1C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707554896;
	bh=8I5m/w5mxajnJk+OhY5A7NQqa86DRXXAGXrjj4NB4j4=;
	h=To:Subject:From:Date:From;
	b=RTyJEUpaltH/wZoa9pehEufAOgBPbKkapkuMEZ5SwlqLclHPthfZbyqtyKy5gH5G1
	 EHBPO616QL6I2UTdv/B5q+EygvanGk1Ln1JSbPByFMcZdifB+JwoJvMuN0ZLcewaJe
	 2A4TPrnLguWVDQzcE8/JGrS1IWALgcsSM+rx2AocRr9QRZUz63RccEayYH1tOJhIFS
	 LNKiIoZkrfgA+j/R6J16g8pu8y8HqEqCjZQmSRBYdMs/E7XZTbLk7jqZ9Rq8KVXFlD
	 DxBH2zlkkn9Ln+HWvjrMtgGCnNKI8/jq/l3MlOVJUG1cFdPa0c/iJtHVKSsqSofBAa
	 DJ8L4sdnrbn3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4A4C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170755489636.7007.8943998545980280936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368f1f3e54ab787d930cb859594569e5a3bf14b51f27562d1134fbabf77751ac
Date: Sat, 10 Feb 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707554896
