Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178E07E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 01:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654047719;
	h=To:Subject:From:Message-Id:Date;
	bh=GK7X3O3bimW6SUrBS3Su5fnqI/+dl2BpfxLbjowDukA=;
	b=Jk9GXICL6gc8AmsUyIWVcwYteKQo7+lLjyYzbEFabKRmfPaGX1GqnIKqycZpB5lT
	lv5WunJMpUMOs7gUwcbMg++IANEsH06V67TKwXmdAXp9bKQI9QVW0WvuIqvacomKvdJ
	qks/NniMqecG336B9FM0FvI6xfbmUiLobULIVxec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654047719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GK7X3O3bimW6SUrBS3Su5fnqI/+dl2BpfxLbjowDukA=;
	b=Wf5RMX+xF/eluMrnJ9vFMRkyjJIv/mAiSlM5rGDiAkY2nbgpLxhnNzfik/4EIWM8
	+G4OFONVo5tI+LFmqQ6fnt9phY4X1Tbh25IjvpWLR7c7o8p0SpVq+X/Z/AOMpceKvaO
	wlZO0GD9n6iHOlWxzXhv8s+hubJS8BQKn+fuy56w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ced3f84-5a8320d6-1816-46bb-a582-85963c56f7c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc76ddf70566114eaa958b24d24de565fac845d6aa54e2e9cfb955be03c8f352
Date: Wed, 1 Jun 2022 01:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654047719
