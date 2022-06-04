Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27942110C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 07:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654328699;
	h=To:Subject:From:Message-Id:Date;
	bh=/S4PVqE3s6WF+6txH6WhgEiiPAEnYjhnV+vb9HgpMGw=;
	b=BwdCpr6fvONZR9e7S2aAkSh49aXEVqPb7mVGfhdgVL5GbyVcTjbYuvV/O92wD4/0
	GGBy+juxcDmkC85ut8KCP1loB1MtHb5hTtWGK7PfEvVohnhd/SzoSVc8+MLHlVgT6j4
	oxmydOLUK8k9gqpo0VJ8BSWsWYwJgPSNf7qSGm/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654328699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/S4PVqE3s6WF+6txH6WhgEiiPAEnYjhnV+vb9HgpMGw=;
	b=RN2mMYLpFZI+hQKaP/CCZ0ZylCJmh5RzOZlZj95NjzoHujvKvAagTEVNTM2Li+Ce
	rGxMYYgHFJYKGAAfSpVyjNnye8ximT9RxpKnVQM+Y96jpInYsNZ0ripObCd55ipkm1O
	UUyj4xb4/LgqAA0xu83Mxn+tkjUA7LaaL1lA/5lo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812daca970-43bffd38-d085-4c6a-b83a-7a2c1cc94e6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5d6c4509bcf69b09fabe673210fb7acf1d0e82c1a07ba0fc1419d65930b4b53
Date: Sat, 4 Jun 2022 07:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654328699
