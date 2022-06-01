Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29EA362
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 00:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654042859;
	h=To:Subject:From:Message-Id:Date;
	bh=HlGCu+g0Gx1Cw03oRZoM2vp3PzK4UYBqsqk7pzbqkUg=;
	b=autt7MoqQoVkVW6UIarE4f2QCDkxeDt1mk1nWmrI6ylV7NkZQcvnmUakWm9Jlr2z
	nvdYFzG9xgVsSafLJv8AdH2qfanH+ImoqkmqXZl3Otb+rSy18XzX8NZS+KuboDVPX9N
	R2ICzlA/hBSipsp27imorTT3pluBOdNJHs+R33OE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654042859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HlGCu+g0Gx1Cw03oRZoM2vp3PzK4UYBqsqk7pzbqkUg=;
	b=UX8uCrYAOP14gGm6PywCNodY8wdJV5iFlobkBRZnlS0EdlfUE9o74Vbb1SO2h6HS
	8Uo/+q24oT+/HKHsbDZCFUDGLvipS9xHgAL7QtNw3t3+ueMlyWW3B360U5RkRxVAIWS
	GbQwzo58cPgrRiBRkEpBbF/XkYFeo6DDr7yKwaYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ca3171f-3429a031-0ea0-4f80-becc-132f30ab3fda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdb2360233278aab47acb24e96d1a918fab3b2967e3c23743bb0ec596960598c
Date: Wed, 1 Jun 2022 00:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654042859
