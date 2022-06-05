Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDFA46AC
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 09:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654420499;
	h=To:Subject:From:Message-Id:Date;
	bh=Pl2qYh77QTKPrSj9UpYqGxx0nKpzUw1cDJpqiy/hfw4=;
	b=GPdyfBSFFkSsO9ShXvK3zaQCkjnoAXY9kKXpUl0xBRDgvuol1S3DSvm1XGVtfNAZ
	6AXC/yIfR5WVva/OSjoNqmMONPteZjg1Xc3GdmdUTwa74VedNSv6qYxOD48UTGGlwjZ
	KbxZUBnneOgl5fG/alD5SQ+ljvh0H6WR7udhJ8mU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654420499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pl2qYh77QTKPrSj9UpYqGxx0nKpzUw1cDJpqiy/hfw4=;
	b=cy6/pMLPgTUKxVhduQsin2XJ+aDwWAJtayFJ/zVNSgtCtSZ8JgmDKngHkcWJokaM
	qt9yoEzqtuKNCE4WLXN++RdrQORXFcYNBp59Q2NAUt4D1xCTXnOLfPDUpw8EypxEGoZ
	dStSSd+UKT8LpEfQCUnwYHhWsLxqtH3x8d4ej1Qs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018133256b17-6cc76d0a-8f4b-4d85-af49-aaec55671d9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e40abeb2583290ddb73e590abdf395766f59edf889f597b5682792700e838fe4
Date: Sun, 5 Jun 2022 09:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654420499
