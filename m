Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF11923D6
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 11:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652959499;
	h=To:Subject:From:Message-Id:Date;
	bh=srdm5/UIwZ52DbDPD4y1G140SJPSrdEsHHAK1+0glx8=;
	b=LX2Yy59WRMS6k+zKzd+PL6Fnms80eLG31DU9n4egSwQlBUmBg9qgohut/zswNiSj
	o5/MUeB7Mkz5Td1fQlBjSIOKRk7jPEoNUvjuM+7UlPvnL5nLzQVWBTE9/dB4VN4KMvJ
	O5FDDamMsb6J2gN7e1Th//RGDy5d9/piOqZq9Xac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652959499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=srdm5/UIwZ52DbDPD4y1G140SJPSrdEsHHAK1+0glx8=;
	b=c5p4X5Yg/C8IyPPdehLkAS2vu0PXIsJyfyMuLXQoG1m5/wuFR1BALR1sjVJiG2GE
	qtcNnijPC7NmOvmVh9/dcUL+olAnNtK0nYJ/Fz0E6O15xfyQS9shZumYpsybp3sLxqK
	5ykZfJhRz5Dn0fWxWyP8AszGP44B1mIcLb0z66b0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dc1053eb-c09e0c61-caec-48e0-8abd-16367377fc8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d61a8a86913db075c9db181ede65942668a401879cfcb0dc99227421caacbd69
Date: Thu, 19 May 2022 11:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652959499
