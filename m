Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35AF10FF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 04:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655873759;
	h=To:Subject:From:Message-Id:Date;
	bh=1k8lrT3ZIJDKyugj02H7ONkRX957Kx0t7ld+FJLvxN4=;
	b=Yt3cfVwyUnA+GxvYEkQA8e8MHp9UTaZoKLW/pJg4sAJI7BR20kFMGBaAzro6tGCF
	bG+mcy/kNzrmT4J450mVbYjXBrjkNY6BGK2J6v4CBJmOVdlYB310m+rE5G8yFtuCb+U
	2OwA/izhjAUOWD+pHwL1bGB/iSBtH44iFtoXDNsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655873759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1k8lrT3ZIJDKyugj02H7ONkRX957Kx0t7ld+FJLvxN4=;
	b=T+h8tRGQThcHCT+0sf4lWa3hiuLJoqhzM/bs3++oFDIc/iqyFWtDXH5RpGHpdVxq
	zYsBx/oIFzRQ2diNROMNUmKWhpjA9aIZ67H6OfWjHqJeyrFGinNZs2flEMC8AQdGTsr
	OY5181O3HLBTCvUU0bPFQPVEDgBz24iWFkp953k8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018189c4685a-cbb2ab0c-9f78-48a0-9c0b-fb02264a4fba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64703fedad4583f44fc6d6e57b82f34fae45d51f8a144231a33f3988e4b0f54a
Date: Wed, 22 Jun 2022 04:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655873759
