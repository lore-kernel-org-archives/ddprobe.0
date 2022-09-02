Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC501869
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A28C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662122453;
	bh=OwbC/jt+OfvyKkxlirZpbup79t6cwn9NB2RZJNBws74=;
	h=To:Subject:From:Date:From;
	b=NjrtDh4IaBNZ6/VTq4ax3VNh8QoGGDeXTfZyNwIwDhfq84yYS1GietUrq8cSbxfSG
	 +emEpg0xp3l5EWM6Y74FytS5IDfy/UIf/YSFf3U+9ok8hy9FkL13tWB3f0u5OnMQvT
	 ajafmUFifD4vZmtLYNRqoCdoOmXBlh8vQVD5NB9jZUr8aPaWsQHFyc/C762ufMmS1J
	 wC2y0CU5evTu3GmuD6NhHcaKicbRv1d1XKRvdrbb01ZRi0uwjphGMmHXYHwpeJzPmy
	 XcxA963ZnIhshrj9SsmPuAM5kVZbLDA8SWyo0G45c2XTZqDF/d0iHmPXef8F+KoNHZ
	 5N4jKQ1hYaJ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E855C54EE9
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166212245335.10686.2952497887678838817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d56a0e9b0d259af1221826db5712549c6226665c03f7273d41d8e8f38fa4a1f
Date: Fri, 02 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662122453
