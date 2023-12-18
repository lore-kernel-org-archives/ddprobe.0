Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E71633F7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZD1/4WE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF53C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702862896;
	bh=wiyd6cECV6XRJp64iddGCS4+0zGanD6bznQ3GftACR4=;
	h=To:Subject:From:Date:From;
	b=ZD1/4WE0ID5PuVKLEkemQrj1zQ2hJvMFFlxqdoe8JkEayXSO+7iI5UBIFrz2XDDj6
	 B0JhVzfZhmB6+TMoR4AR/H+32+l5wM586EBdP4KFKVvrqoq8iJxuF81atdfg4T4KKa
	 kHkQKGGsp68C3ReMhMSG0ouLBA5bWNvrKwnjs030RXd2QkLxMQFnANrHYSgs23IvkP
	 nc0lFmDkFgSuQQHlJRYUbPhusuplPxHW9iz5mLsE9FUIjI7UpLhPOG5LGbObcmFvBJ
	 U+pSXP8WayU8VPclRXQK8wbeS9cLSOqVIGOjJi3MBg/sFdT+/8INa3D2Ba1R6zu/oi
	 ekJRWpYAtGnNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62300C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170286289639.20008.13672797829462415030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada4a4e25f7c986d8a9dc1c88ab588bf4600ee663cfebbc0e396449c74bbe370
Date: Mon, 18 Dec 2023 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702862896
