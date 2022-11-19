Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFEAE3C36
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6B0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668879054;
	bh=g+7lEFw/Y5vCe3/V091l1vJ4ZexZI9yCGn9WhJx9Evw=;
	h=To:Subject:From:Date:From;
	b=bDZBWaGeg6aE1iqmuob1BFe7L+dh7jP2SP7aRxg/iV51ScCzQ+h66uc/TRQZS6t1A
	 SVGw+dgqzjGSGlaBSKLZ+oD5PfKK+FawKz4FsycIMK9XGvBhafeecSfe29+3HShNht
	 VmPH4uZkM30KI1C7i93yE3CGg8lzXuuBEB0IOQuk47OrX/cU9e/u3qa9Kerl8J/1eI
	 ulWMQNlbw2fOpKF91lTHd3hj9Yv4fR2vChEcy8f35qFuK3SFrz8ZEnjTfjQDG47XRt
	 WYJEIecAGR7BsasrSQqIpcqmRup6unnUwiqvlNB9eK6fiTrLKaUXBuerzkUknTDnI/
	 /2/POaiZGvGDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50171C43217
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887905432.318.13218270332296011700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a42646f9a8cd75c9022945ca07832a74528cc905652cd8622a6ff71627b9c88
Date: Sat, 19 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668879054
