Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F036AA5
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660672852;
	h=To:Subject:From:Message-Id:Date;
	bh=sG7v4l0J8s+h5IgK3iNUSo5C4UnAzxFxPr5hqORhGFg=;
	b=k/hhI1Gg4MTw/+27qgw/kaf8ZzaTPHL0ezDOWb54hJT3oWcF8OPHfpLCBkL0ZFI1
	h6s4wwRRxU58sC3AmEOL9m/liLrAOe6tXUDixtI484tBnwz9WKbVgt70bPYdt/zJLvd
	V8CV29KQIMdq8SYIIKPhl4pPcEuKHoZJHO1nobYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660672852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sG7v4l0J8s+h5IgK3iNUSo5C4UnAzxFxPr5hqORhGFg=;
	b=dsEJvrZYqijuNL5C/Q9QYYewKuiZ6em9/tT35DWuSC3rFJKvlBu9oheHdejp8f2D
	/DboLiJH726DnQnixvdC2Zh3MhflIomh9ewMUc3yJLBp3CZ/97ENqM+iDmMfb5zotWh
	onXTu9boyhBAxOiOdmrMy2ZDrH6RUGeZp7nlpgVY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a7d0c23b-5c4eb373-a836-4b3d-99e0-844a47f0f8e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbe96cc49f6c596918451d71a68ac086d8e3427cd5f9273b409f232946f28617
Date: Tue, 16 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660672852
