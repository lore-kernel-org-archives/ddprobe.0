Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBEFA3D
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658904052;
	h=To:Subject:From:Message-Id:Date;
	bh=iMm3s7r1GPjwOPIDtOY6/THKXee6Zqcka+oz4+IJudg=;
	b=fLpdxG/ZwUbTaBMNEjRyB2ECwSJbbqPWSJhfbhpcteI7CXmF7JkFspnZqzx8+QQX
	Dp2oPGLhLNiZiol8o4EtbBwUcT2Cc9lP5rD/LZUT31NhbtFkPg6nG5GyWErF0PCMtZZ
	UWfCz+P4Ozs2f121Dj588GjFvU6gwxkHml2iVCVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658904052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iMm3s7r1GPjwOPIDtOY6/THKXee6Zqcka+oz4+IJudg=;
	b=BfV0xDijUPFsyI2G1PxN8mZn4eW2sgRx64PH8UioCp/Uqped7GnBKtG2o9E0glz+
	hyfL274t7hkednGciRdfjEsp1My7CKxAJ/JRTL9lGr+m0KFohUyeK87+yDLueKyFKig
	xANPM712O6vGEG6Vd5LSrkma/RR9l8gV7Y3nAImM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823e630352-6674c4d9-a1a0-4a0b-aace-939f56f12e83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36b2df28c1d1ed7d0eb42e1ad257316e4accbc90c17fe6e1425e0f449f2c68f6
Date: Wed, 27 Jul 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658904052
