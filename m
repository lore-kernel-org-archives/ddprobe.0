Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0078E1854
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 02:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654481759;
	h=To:Subject:From:Message-Id:Date;
	bh=CXAuy+jrt2RkQEOABkARibbVGM5t/xw8/in/E0bypK4=;
	b=PiJmU95+tLKPBwpIL5FlHhHvwR3U8HiO520h7UKj9BxB844vOP0bV0D1Ze6uAozP
	IFmq2KySMOu46q2D2DndF00Ikd0B+nsxycybB/eaUW7WFz5EOGtKNS1jB7AD3OnL0Ar
	0VBpFL+AscUtF5pH0thimTgism3NcaA+7gK7Q5dA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654481759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CXAuy+jrt2RkQEOABkARibbVGM5t/xw8/in/E0bypK4=;
	b=BeVk+CuFKZRWWitTsGBlnxV6O8HPGAkS8Wyy0QYSXI44hhFojkVg/97Y9qMP+yAK
	OHI8KptVKjCcg1y2Zigl/EEpBEAUuCSADMpSD02DkpSfmv2VkOPHmREPKTmFnwTxLMV
	0eAKUqM7+FcphTbmXlZMRGjS1Gu8kS7KtuoRe9uQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018136cc2bff-086e5d13-08d4-4a7c-9fa2-706d8d91566d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30ff43e3bd89eaeab8a9583db24e2f581d9416c91334d9b743b37ef145152b7a
Date: Mon, 6 Jun 2022 02:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654481759
