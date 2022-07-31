Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A7A15A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659241252;
	h=To:Subject:From:Message-Id:Date;
	bh=tVchVy3l1psMCXEo0Bo2lZz/57z2AHgFtIAFmnhb21w=;
	b=hP7TADGZ3xHEL5bQjS/HlImMp8s4+NFKbMhQ3Mr/aVnZM/2n3EcmSvF16tCKmSGG
	KgZ0w/Ga5FczOf+BJwHAGs6PisglqMifcBXMMBb0q2xwQzPzQz7Wyqob1q8vFE08ASY
	y2eGUliRH5NgHnbOzdtckMOy8lslWrTu4pEk9JOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659241252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tVchVy3l1psMCXEo0Bo2lZz/57z2AHgFtIAFmnhb21w=;
	b=aljqJOMxQEdRuzcgdMFVlDeE3Mp1Hkjf+6hr+eO+cR5tMJGXldVf5zgHbMmaQBnz
	bzkA/1hbbsIPkdGnK1+VfObPf1wSd2I3RahIhJQNVPZJ6xLVkvaO3t8M4zj2txW0mEi
	yMKCznHnYKNq4XOcdk7wbbkfrA7hSSu44gxjMDSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182527c46f5-5ed00899-ec1e-4bda-b482-35a0bb470ee6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e19bd3f538fddbf3e2899b7f9f03d8d9716f08a2b4f5ce73e17b1b9e2763770
Date: Sun, 31 Jul 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659241252
