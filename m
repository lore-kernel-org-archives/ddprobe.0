Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E960D1376
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 00:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655167859;
	h=To:Subject:From:Message-Id:Date;
	bh=zMili+8Tt/HOykLKA8xG0VZSdF1wApUvh3mt1zIZsps=;
	b=Uj1qPg6ejT2TJc1McnZWZ2E0rI3lpr3eA8f6D1VD6Q4uF75RGUW6ToiFKHioQuqe
	AoF6iZpiMTNoVyF1HkYwO2Jqw4D3HtasdFRJdlt11Ys8St/f80OPPtPK0FlFaJeLamD
	0rHzSdDs4sg5BGrAcIEtXvNUROHrVKQB43k2i4Yo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655167859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zMili+8Tt/HOykLKA8xG0VZSdF1wApUvh3mt1zIZsps=;
	b=PutBN8BuKE4pRBd6ccdo6Etu0/cDnYn2iHodN9egs9qtEgYAR88VBHTTmniUVHAP
	FLNgAxjFhrSWLxAGEW1ZiXJqY02YlEumyamURknDVApad30OuYv9deOFjYMWMO/N3m+
	6+c1HgQLcyN3+yjSwMaPt/cQm1mjxqQM5qwifY/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815fb13a4b-e68aca5d-c67f-42cc-ac4f-ef97ab4ccb59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c06f2bccb51bb089699778ac66fcc8993f17da118aeec759375038376b8da96c
Date: Tue, 14 Jun 2022 00:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655167859
