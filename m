Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEE21367
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 18:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654279919;
	h=To:Subject:From:Message-Id:Date;
	bh=79ap7Pc0u8g2jCalH9Ohge+3JXiNafryLMEdGoGuZfU=;
	b=aiofMe03YZzAi1Vss48ov3z3bHy0t8012wK3OLncDO6At9Yk+vryNSgJHpw2eAbT
	udOIgpK7eIKEbtdD/kh1JGH8CIfelO4iLFB/MCuxFnvCk7GLGwYYQDJXRoseaSGPu6B
	f5/Lm0XsosBKAbHzmuhrBdQPZU/jRBRn2l/pXAJU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654279919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=79ap7Pc0u8g2jCalH9Ohge+3JXiNafryLMEdGoGuZfU=;
	b=g9NRoCdcXBix63kcW6dOJIrDmnLsrj5kSwfHnoBdLsFLFlpLWIbXTxOWfKpSP300
	lKXfGwVKG7uXFycO4KwaDt98nIvgAhxXbJmHWtUE40Vt/2UZW6lVYVmih3+SPL+Y2VB
	zZbeuHLDglUBI0LACgtteaaFgEsJK/Tl4MKZH1oI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812ac456be-4028a324-1374-4e06-a00e-b03bc590c9f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c2efb7d2653cfa0e31d04963497af1969a2eff8472e4ff5edc7f3b3423ef3ef
Date: Fri, 3 Jun 2022 18:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654279919
