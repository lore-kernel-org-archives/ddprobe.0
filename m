Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C3B1370
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B3AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671962487;
	bh=7yltlfk19KYrWGpPXYfmu/vpW2UZlQeebXMiwa8r6IE=;
	h=To:Subject:From:Date:From;
	b=lIoEyGOUBjN/3JixwMFx01eVCwJlIWTlfnplhPJ5eDZcBxg/CKwcAkmJ/79+Pnm+W
	 +EcQ8p2aNNGC41gZPZvtfsKfVxnkeDf0pgOKORFIs97b5mniPZlC71uuqsAE9SLvxh
	 mSZQ5W3SGKv4vioqS9S4Mg9zldmgi/THz8ernxqy6JzR14ZIyXxZB7W3evq6J+0Wn5
	 ewCPUV4VSS7s3cz0RB7IFcj3yV6u5TcZk+R7XszkBe46XcLb/x4Ff6cgLyfAAUzNMl
	 DCqxcl9jpMdhhd3xWKf4kgWqJ+IHJ/mpuDo4uoYMAWmydRYoSpTjh5oK2W6+tbPyVx
	 VxLrYSkSr9e8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E4EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167196248738.19222.580280668440440487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c573e1cfb08bb7fb7b574097e23f36ed1cbd78035abf5741fcaa958de2c8fca8
Date: Sun, 25 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671962487
