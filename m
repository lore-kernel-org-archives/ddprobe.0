Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AFC139C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B201C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664555453;
	bh=pz6BCKsdXJvcvniTEo4QI+padVBA/pt01ByiT2ge9G8=;
	h=To:Subject:From:Date:From;
	b=YGxuqHpdRb9V/3bs7aHZHjxv2APoCyGEPlPkqyKnnnWMaz3GImSf6rThL74JPXYKZ
	 zFUGBV2uB/ISH/LknJRlh+wDzpPW0RoS9rw0U9L6/uJ4iItmvvY2Lw+k5+RWjyJdPg
	 NRMKLcxOqfOGn4Vvt8XNYDXGjOnrGk82pncpjwJ0MAqGg+S70htmftrE0dafV7ULi7
	 rK6gJnI673MBeV8Y79+6NFpZEDfDdfz5D+hqWi4h/xVK738O4tNS4NLshtZYxtOWxV
	 Cfqi0eObp/KoNNkyVuk/rXV2nc5YQ1N3CwXVYc6LYF/DnlM+IU4J/Gii4I9C3hGYT3
	 Nj6fv+spfiQcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B54C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455545333.15233.5764549335074743695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296e3379d4f51282698e5cec0446e650a5f4caff9be55ed39bebac1fa3522cda
Date: Fri, 30 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664555453
