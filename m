Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A6E120E4
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659549053;
	h=To:Subject:From:Message-Id:Date;
	bh=rCrT7pNOZBhOk1LG3vfiADiDbPkIX9HY54dKBGyev2w=;
	b=XaBMLf3tsxUsXIUlz8EBPfjL3PBu+LWisskUI6NYnncdm30sB6Tocm9SnsGcO+Fe
	zp537UrlioANxM5R5jbJUVG/gEULZ2zDWicsF2hNev2BPT0uOsc/P/4wrzr3wE0OIzy
	ClPgt282E62Hlx2mS0C9OfbXdQ6CC2o8P2Ozrv9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659549053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rCrT7pNOZBhOk1LG3vfiADiDbPkIX9HY54dKBGyev2w=;
	b=aFNkVgOW4nGO2EOphpUDukVGeRJiTTWFnfjy1ZRzfGlf8JsRQjGoLdq2kmQ76Xr3
	rnciFjG0cwUWF6oWcXpT7TaSFq66C8DS3PskJvb2nXHm1cjgIjmzP04ZSxhrx2p+Sf1
	HquWCoB5WW6rE6EKi3NKArmbOZ+iu2UGXmtVzTRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018264d4ef11-3b3cbda2-863f-45e9-b8f2-78183fafdb24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1001f787a0558d64f7e6bca006eccc6a803de85cee5c6e0957869cc327e0f6ed
Date: Wed, 3 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659549052
