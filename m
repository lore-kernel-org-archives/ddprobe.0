Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2612B1FC1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 20:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655237339;
	h=To:Subject:From:Message-Id:Date;
	bh=HzGLIMHWxtsixOi8ryJS9gPbUDQoeMfvUntfZcwFpqU=;
	b=V9fQSDz4NM/zkOYC773WpoZvLbo960XEZvdpeA7tqZ80xXi0He47BrJeZ4vmfMg+
	xqo899mk9KxfzyTvdLwSiH8q7KOuSCE+q+LaUyDE6aw2NBeV9+r2IJvYfVFJwqcC8AL
	b0cQOrlSGLWe/oAvhKzh3h7OU3kBG1MkDCI7oJYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655237339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HzGLIMHWxtsixOi8ryJS9gPbUDQoeMfvUntfZcwFpqU=;
	b=Y9FxEmX/AX4CVMrW9W17j+gPr+gJBCoFTnA5X+NiS4D/bJrkRwf18LBuJspe73YO
	VBTsxGDZrouWNJvJ/92P+0H8fhJnMMlL1inZRCCO3Rjd5zh5G3n1dWOW2GDtGoW++Ny
	ASFAZg6VvB3KZIJ4yZFSkYrdZ2J9vcml6BDuJWfc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018163d5684d-66d8b27f-4c0c-4788-a61d-18b220fde712-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f0293468566c5017560f53125069d2709f2a134ebebcd8cf18e6cfd22666779
Date: Tue, 14 Jun 2022 20:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655237339
