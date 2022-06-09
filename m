Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A9B7C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 21:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654811879;
	h=To:Subject:From:Message-Id:Date;
	bh=WlQD21O3Cs2Jh7/fXP5P0j+blGB9pDl8r4NLC63s+CY=;
	b=HNATw+tmUALHuxSPHn3iw60u3v26KRLwSZvCx089q5gVFFqjBOOcurNic+ggIcbO
	o9tV7c3W4cvaKB7wpW8ky/8mtjG7PGz3Ob4yw2GXuZoWvD/oKFFm3sBQhsxcgrQr8hc
	Uj/mSSGTwsFyKjzlyBSfuoC6EQageh7og9sUKUwc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654811879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WlQD21O3Cs2Jh7/fXP5P0j+blGB9pDl8r4NLC63s+CY=;
	b=X28/5+3Tc1CNVbltx0nhtOWiZCKCkDo7Ar0/Ru15Spf2VWn1Tw2D/w9uXdO9J6J3
	1vOzP2ZybznPpGzLjgSdZCvNB4yT7paM4XenkK5Ort0i9uyHFjtaefxeBmqSfXEnCqJ
	2IrL+o97Frp6MUb357UkittNrb8grNnY0RoAWk+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814a7967fe-7afcb770-7f2a-4174-a24c-32ecefbfa8a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10b816f5fdf8252f4e0f29d0390f1b869dcd0590245d1f0a63d873df2fe4f47f
Date: Thu, 9 Jun 2022 21:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654811879
