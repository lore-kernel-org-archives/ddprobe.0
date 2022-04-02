Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0809C10E8
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 06:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648879618;
	h=To:Subject:From:Message-Id:Date;
	bh=zTGr1ggD/ms7vjiDG/VWSiwFUB0FSyGu/3tEQwFQMWU=;
	b=Z33Nr4Z0qcA94qSuOxAPguo7ZJ/EtR8Edh32Ab0B292yrVSVmbLZwqzmi8/e9hHR
	E+ac08wqvvL0LGhkd1tqCc37aIGay+pNcsdSVOz4kNJe0aHuyFgAVfQoYd9//RX4AeM
	gNbWo9coK+4X5FhPFOyAsHoRsJ3U1Om6u3Z3G8gU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648879618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zTGr1ggD/ms7vjiDG/VWSiwFUB0FSyGu/3tEQwFQMWU=;
	b=aP8bRfDo5/4FHFDof4EJQE6wQgjoylSkNiD44g0cHyGmDdW992DgY9VboHRKuxqD
	QyEMri+L66AdWdJ3xxaFHsyItNdUQXj2hAmfjjB5DCM6ZIuOddLe/KTVOFtR2tYwdjd
	f6jTKdSeK3dHMbKH/tAVrpOcUdDNeEEVcgJ5m75I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe8e248b7-de6d3c95-e765-406c-9982-33bf03c0bad1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 934a8128984d5eba70073cd835427343031a29bfd12efb9209ced13b05ba85e6
Date: Sat, 2 Apr 2022 06:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648879617
