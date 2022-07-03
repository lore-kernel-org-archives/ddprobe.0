Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A67B3C2E
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 18:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656872812;
	h=To:Subject:From:Message-Id:Date;
	bh=7UXP+ViJoOmyeqtWXXXIQ12GzP5sJzM5F46qJVagd78=;
	b=F9usleZ5+ZxYn7hRcU7l/o37XtBCrL/Awd9jM7wYrxWusvwetTP68ZqsI+GcLGpe
	DrAuP4Q2CUJRotGmEbxVAnHE9id1BemHaF+kAfIgjK9Lkx4DR/gYZGGu87u8pkdeSrk
	RCTi83Zhu5dpbE4ndltKFBUn0sJh11S1twmcqdRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656872812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7UXP+ViJoOmyeqtWXXXIQ12GzP5sJzM5F46qJVagd78=;
	b=fJ6pQi1Px2qkCdPpxoW77yQB6j21Gc0R+xwkWKU3RYa/JrbDja6IMaB1VImD5uEi
	/nYZER3A77GuSkoxbdDj1UUNp+MC+fFOj564VcSL/+Zt0uitB9jk2XDuk/StEQ0BFjA
	joVbXE/IvO31mV1wpmZ8s9OwLXDJWsZ4ZGymJ2D4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c550bf30-2ea5d713-02dd-47ba-81b6-d685f2773ad0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 069893177dd5ff03b4b4602eb34acb6e561604b91a88f1007cc4b2e573b3b307
Date: Sun, 3 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656872812
