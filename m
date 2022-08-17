Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAF3185D
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660711852;
	h=To:Subject:From:Message-Id:Date;
	bh=UkxtFm+twqvqQW0ZRDww6/XmZDDaWhSzsFYwWX4TWe4=;
	b=SiEhyC/iJmDXaFsblvVOzLmQFKNESUS3YmlTSC4cah/R6beJKnZ97EJWJqeDGs3P
	CTApy8nFeI95RzC94ECkIQ+W4b76uWGn8LXYcmJR/i0XGYZx4yirmuhvcjdh80LT/1P
	nz+iRWcnxhe9NOGt+rmep1uUmzRVdFxpVhJhccYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660711852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UkxtFm+twqvqQW0ZRDww6/XmZDDaWhSzsFYwWX4TWe4=;
	b=f0ncOqKVD+beSLw7JnIJ9LyEQC/rSdi516J1jaFidPI5NndYH/2hCUS5qANO13mT
	qPh1a1rCSHr2516Rwev/SbW3C+oylnxSH8K0EctirRwJkT/6BMznC0b/i3AKadrAl3w
	sVIMvkNovWWZ3AMBkY+OeToPFOl8JUInG7UH3Fl0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa23da3f-eb991597-3894-49b1-99d0-294c0461fd86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2071e1b5620936143131eeeb9d33dcbbbba33e3c481a9194d6f7c112e370760
Date: Wed, 17 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660711852
