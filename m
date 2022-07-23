Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADAA7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658535412;
	h=To:Subject:From:Message-Id:Date;
	bh=iqUdXzmdyBLDKfAsFtTLQKp3tnMUgcc1+aJClyIylx8=;
	b=S0tFmO2vePy0X2dAXvGyquQi55HZAwaxQ3htITxM3+DsmTDVE4sMmWV6jPf4KlrS
	w9ztr0ElkWflnBk8/jLPZPy8we2CDbPq7gwm03GeYHhNLsFb/JalBY7BCZOB3ZQiBt6
	2+D3bEfmQ4ljGbXmZn6hhJwIvxa3G6HPtMOjCeJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658535412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iqUdXzmdyBLDKfAsFtTLQKp3tnMUgcc1+aJClyIylx8=;
	b=f3nHol6Ix7G93OnZhcq6I8p6OEIW9E4d6wa1ObziYVG6I2fgYgbXKu5iSe5+aQSq
	A2mdaJo+4OhcZtZSdrVF4fEjIRLnFwII5Jnvxr5GALdQa7iOyZh/uJnT9PmoBfbiMVs
	8QfwsVTMDfmSdl62gtMBRluYtpLf18ReIiTVU90c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182286a0264-44c4696d-6a74-436c-adf4-c218a01ee091-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f05508778cacbc48acbc74b5331bc5abfda43912dfdc11d7014a343c2dd5d02a
Date: Sat, 23 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658535412
