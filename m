Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0621B4C99
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657121212;
	h=To:Subject:From:Message-Id:Date;
	bh=IVd3hwCdjqrNdTDhg44crY+jDM1t9tItwharoRp5pn8=;
	b=lCIP8a6/jPm4h7NwyKFPwpQzsurgWopo16H2tyEFwxqeZYQkCrOGLb7vtfdqT104
	8dCQagBFSa/86pHczJ7RlLBV6aGKRg29slnQsO1hHOzKLkyp1/3qRqyvsQNSrZmax9b
	+ONxvAfKbUsaMD3ZKmhXLYKEkV8N1JKJJLnotxdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657121212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IVd3hwCdjqrNdTDhg44crY+jDM1t9tItwharoRp5pn8=;
	b=K0LfSmGaVuNCzwpC768aq5d25g/pIkewaX3mEHP+w3EeF9mBx6LogB/NOLzzbiiZ
	8gVlhHmiZw00mW0SPznHLWS974P3i/pCOvffXGRYNboMHWR/khgkbkj6xMFOP4VO++l
	7VmiudgyB0yNB1d0hdUXG/hyJw8IaQ+VB3lNZD9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d41f0765-9ff420b6-9216-4e49-b699-18802980801e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 277f244bbdb28f6ab22542f2b6fca861ed433b15e6f864a201cb221e54d1d9fc
Date: Wed, 6 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657121212
