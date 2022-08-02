Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0047F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659411052;
	h=To:Subject:From:Message-Id:Date;
	bh=PGiPoqUbxG5DxwhuFMVfwsMFKoYm3Y9g+XPKSwSsFkA=;
	b=XGutPaLcq4dYc2LJT5pefU1viFfMagy6Ekw1IIHhFht3WZmHYFvGcappooulUgn/
	dTSG4/wE4J4Qb8FfrZUgwDXZM5kM/I0601Ley0x8PDfIOfcawcTnccUcN2ZX+B4dW/y
	k835bKxJEImhOociqiGqnez46ePLY1x3hwOGUYyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659411052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PGiPoqUbxG5DxwhuFMVfwsMFKoYm3Y9g+XPKSwSsFkA=;
	b=KbQUX4eWzndqvNYYFDGklYQZpyQG/sQx0PT9vnFQrAehrrYAOIrowNbSDh5uHOxD
	TDUiFEtIBK6BwL4Nc64+watXXlGpAdieq2UPZH+fpKZeQea/HBG6TSSiyL+eTMUUfou
	gz9T7bP2y1he/k+A8Q++O08np0snxElyhozV2lD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c9b3813-be230845-38cf-4520-a57d-b03b5aa88591-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bfcaf3f468c81a18dc37be6d6c2689fc87d5e9bad661248170f2f5be9988a2c
Date: Tue, 2 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659411052
