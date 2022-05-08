Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30A07E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 18:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652035318;
	h=To:Subject:From:Message-Id:Date;
	bh=4fXeIoEqcqABtY3E/kDbB3vqbDlr0j1+LQlkww7DiyM=;
	b=Y0ti4SwyB3z3Ula5y4ytwwpvPAmsA2bpm0pRNvr3hA1H2vXdN/6+6bLOZrS3Jpf6
	6Q6jeZVM67tqnpdxo4OiYxi2nAzKjiyNNrNKG7GE6rPu3VX9FJpRGCCP+qMITsBosRm
	RV+iTMMfUSOFamA7qsV+ziDLSBMfCsvuR45U41Os=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652035318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4fXeIoEqcqABtY3E/kDbB3vqbDlr0j1+LQlkww7DiyM=;
	b=d721aA0b/HKeKfK0Hls67jSiaNr4R1ykOJXPKOdgR9IMdQk3oTLRJKRBKWiOHB6u
	G/ie78qEZIQQH6RrFn8gx5ee45YLlLHKXV1kb72U/Zj002Y9HDeoUPdG92DG8uqVqSv
	KMbWpcY2vtxAWOGEPNZGZX6dQJhx0W4r3OZT3TR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a4fa71ee-4093177b-98c4-4f50-be55-15fec45042e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05f394becc50d418bf0bb5e76ebf4fe27c56b390f55c16e38a87eb27518d7f7d
Date: Sun, 8 May 2022 18:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652035318
