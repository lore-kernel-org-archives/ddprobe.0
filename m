Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DC93207
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661290252;
	h=To:Subject:From:Message-Id:Date;
	bh=DimQDgSft/TMP1aXnRVbuZupSoyENkNYW18Be0nh4yA=;
	b=aObwFtpbrIXjSl/3PGl3MlbF52VrJaKBk7des5P6O4fulGYXPH7q8UgB1HFxsbiv
	MkBNvMKbgcpLI2ASP55whwrjOVm+1gFczJnLTIr6jurb/ToUl6OIHyQu/BFFc/jK5zr
	TGFYNtdYlJWJra7dweiQtX9ULZXLh/CGV9XbpOZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661290252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DimQDgSft/TMP1aXnRVbuZupSoyENkNYW18Be0nh4yA=;
	b=N3FizI4+m/nfIiku29OYVPqvSwqM3DZt/pYKqI43AbKieAKXnKIecTog+ooAufk9
	QV4EFVHzulZtzU8hZEHXpRYq4Lv2TEkeb6p5l4GIX9Fhv23F7Y99aqrff+v/cTj4Wft
	H75NZ+cLHjUYWQ6DHJ3LpfQ6hv7isSCLTGOotF/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc9d8904-c25a5783-1a1f-410b-a7d1-94e1b046e2ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1cd06f2c76fcd29cf191025abbdee57dd47f2c120d477fc80a82a7405070ab6
Date: Tue, 23 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661290252
