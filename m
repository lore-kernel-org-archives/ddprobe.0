Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1392F25
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 17:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652635979;
	h=To:Subject:From:Message-Id:Date;
	bh=0TE8DsQRWhthaoG2p2Q3nyTqvc488Pl9w6fwU+XUeOs=;
	b=cmyFmGx8N0xvKNbSTziPSXWgUokNI66r0pz89BsNpNxFmhyaj9NfcUIwHIceL2cD
	lHIsFvk99GJh/SbFaz+F+5+pgQZPeEJnL5q3q6Lw6Jveeat7UOm5G6J4nG0ZuK5fB01
	Pxz6YgcHi2zPZ8u8wNBovr8CJA8kICAUgxNUbLhc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652635979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0TE8DsQRWhthaoG2p2Q3nyTqvc488Pl9w6fwU+XUeOs=;
	b=AmyHExPDJyaDLgEfwGNAUZCY9q3LiLMqcrLtQjHU2IWu1PXPy0mIMZ24e/9V6/0E
	EGBYl9tK8N6k+Wd8tfTPdgRFrUnvV7/GOHGaBjbtFm9/LS6TCp0x03nml5N1bNbbOm5
	AOvybuq27xhoj8XXniAkwdx9WNkyzkMzS+hKVLI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c8c7ce22-8aca511a-4e48-46b0-9f36-d0b3818e1dcb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d36dcdbc7e6963d84dc4da45a581f74e64fc96e2acfbea78a2885e96b6cbc0e8
Date: Sun, 15 May 2022 17:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652635979
