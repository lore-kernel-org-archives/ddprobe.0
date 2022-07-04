Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6961D46BF
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656966412;
	h=To:Subject:From:Message-Id:Date;
	bh=71J6LUPJcm3HQ4Jwp2ReRd6kNXNqoVmdTd3LeZf1oC8=;
	b=GroZ8TWEWzZWXSfV2hPWdtk8AhE66CIcaC0t7tQQFaKIy/WxzoPdxy7xAisRJ39g
	E/GoWlQ95DwR2cLA/p7y4oRyLfw2iAgx9/EEjuOH2cG1DMFM6JYb8C02aRH1vsJFWJp
	cQR0wZwe92G19wiy5pcp1cHDzWi/xDHzhMxJyJBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656966412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=71J6LUPJcm3HQ4Jwp2ReRd6kNXNqoVmdTd3LeZf1oC8=;
	b=gwf7ChOWTEboJUclFzwkxhGKIjwuUJ5NaTrZDHvlYkQ8xfangTducMibrHY9GoNB
	W91JQLugmMCs3EgUXTBvAHMqWe+i+BES+dbZkxoWFOAMzTlrvoNeXJjaLrQZmYD+TW8
	CiLJZcprmfSqOTi9vrfpAG/jas42WpIfjVkU/C3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cae4f824-10f830ad-0ae0-44be-ad87-7a9756874052-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a46f4084c38f6968155503a20cd634fad39049c14431573098e319f9a64df375
Date: Mon, 4 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656966412
