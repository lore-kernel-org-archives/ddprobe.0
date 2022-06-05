Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1403A1FD4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 22:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654466999;
	h=To:Subject:From:Message-Id:Date;
	bh=Qp8ZacGuS3OPyiRYd+1Qgqs7NDW44fh5IIzSkGbHWuU=;
	b=dapbm86itTm8X5QnnWgXP5g8Takz0MJMNAFxz0bpANo771kOktEmvl76EzBrIeyx
	DbAHMbWFPsJVdI8O+YzY8kfiLkEFz51ptoaJghrurYLE1eVx57nHVU1ExvVuLoeODY7
	bI23eOmwnTPDxw0Dyj8iAVnkGYCZH6GDkT7AynGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654466999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qp8ZacGuS3OPyiRYd+1Qgqs7NDW44fh5IIzSkGbHWuU=;
	b=W9zU1WeKjD9JjIxWfSDSgPvYt6x/6dj+H3WLcTBJ7CBe7wuyO9FPXG+bjbEN8O2d
	uJyybS3SCMVTDz5yqUpqvwXXFHSG08pUfEcmrcftZc8vXFdXZ+SgaRg5/Ec15DBX0OF
	BJgtkGl1YWOIFV905mK8Z73ZtNQpr2Z1uT9XV6Ic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018135eaf3dd-8080ba3d-0982-463c-a7da-f25d1a6326f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 829962cb71e51f8f14e882cb02e093731ba8e33c1bef7ec685a010a45eb45f88
Date: Sun, 5 Jun 2022 22:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654466999
