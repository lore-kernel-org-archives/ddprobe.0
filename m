Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0FBE364
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D956C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668043854;
	bh=1B0suygHoxLLbby06KWAZ7qs09sw3iExYzAYyIGX9Gs=;
	h=To:Subject:From:Date:From;
	b=W47uFbC4x6MBGK6lWkbro+9CZl5fDaRtBqz3BE0gcfwHuT/3feOWEkmSR8UKxi05f
	 ExUiNfNF0zFNZna1GwSBuMK2VXFEn77yGRdJ/ez+nEVZt7ioI+ojJJA/OBd1cb9IGc
	 cbS35IxQwJOAblLq/QmGkbkGYkrgHQRdhqk4mDDNfxQakVZXRRDvBdlHqaE3ekVShc
	 QsqO8jXMpYS7+iY8dY4YNMqYsuYkq3QfQnlKJSDLDkHwQDsGf/RN8txfkUrp4BOiwN
	 AGUWzHIFzidrBv/jV6o0wA+h24897xiAGMEGiLuhJVcbCeipaVUCJbi1v9D4wgatak
	 RgjIsJ0PUaeYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E8CFC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166804385437.6868.13774309115495639889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788cd326c5ec5dab4416393e51b879885d6e4536976df2f4986a40a497cc1d68
Date: Thu, 10 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668043854
