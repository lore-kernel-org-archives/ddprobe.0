Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A0B257E
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 18:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D097FC433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 18:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694369648;
	bh=FVm7GBlVJRhwRuG5NM0KEmSkqRZ2JOXUNDcotNiSTXs=;
	h=To:Subject:From:Date:From;
	b=UbTAyXAdFkV7Ug+TeaOc1/yoFUIZ0U5MTI7YoHrjPJWgOqNKU3cLHLue9dm0f6P2J
	 HouzQDAClM7/GS/Q/oO4b4oM2Pxd/o4qbNsWiESzPWxnYGJ6//YjP1eiKcTUM7D0kl
	 XaB33Kog76n1yh+t9rmEkNSWTkt8ombbo+e+6ouqLDVc2fJvSKAFZd2s//+8YJJhl9
	 qd+C9nZt8iZpdIG/A1nYD94tNhyzeGIoG/X6xownRquQJuQVBB2B5kM2yXo0XT38QD
	 CaDHOBvWpvWwiF9b2tAcR0N75iZwx70TLjEZU9DsasSn7fnN/EPPjwbR5uay1X5Zri
	 zc9ISrMMjlr0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19D8EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 18:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169436964868.5518.12799070050689361118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ce5bb6b91226e9741aaa28b977f921839c04a5fcbb2caa0c1eac366adee46e
Date: Sun, 10 Sep 2023 18:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694369648
