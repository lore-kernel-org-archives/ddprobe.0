Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6359317D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660130452;
	h=To:Subject:From:Message-Id:Date;
	bh=XfnbPu0BDluNToUjJ6dS32jN55h3ZdmThdQ8wYZwyp4=;
	b=HlCOPy85sLYp3/+1AJH3bBI2DJVnJvHzvXrhUegri/JcxJ30EfnE96RpMe1T89qR
	fvsy0PRUIwjygvQuR5wQQTc9rpHnwSGNMao/EUi8rwr/LQzU3bTAmRV06VAzwheEBPk
	I5SQfwV6ouODPA9nHpAJFe+/BuwzqyohgtsVvdho=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660130452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XfnbPu0BDluNToUjJ6dS32jN55h3ZdmThdQ8wYZwyp4=;
	b=aGf3Wp2CDghDf4bb2U3P5fvqjanrB/Cl41fW9JFiygNpcjuQn8oMGfp/dq4TrgrQ
	HzCZlHQeufWdoWGoA0onc0UL8mnrP3abxUtK7ASvvTGMC2Wau5xYlJcHepkq0CKNwHO
	k++MIJgu52VVZz4NIufENGsNnalr13Z5HtysptoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182877c645d-7c09c032-47f5-4edc-92d8-c19ed6030d3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3485c26807919f0a786ca0022d865636dd1431814bad492d6b252d32d11259c0
Date: Wed, 10 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660130452
