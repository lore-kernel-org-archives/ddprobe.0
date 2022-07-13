Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DBE15AA
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 03:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657681612;
	h=To:Subject:From:Message-Id:Date;
	bh=Xu1bgiBLiAR3pCVZzeNcMW12fLOAs7A5Pm6Hn5Ytrls=;
	b=DKXdQcQoptqhpLsxUuwQjoX9dSLeOZJ9zQEoZBsgF6X7dLSOF9LpbKnBCOdf1M3h
	iZ5YKB9kecLWYdlvd2Y+Zr3v3+4USjUobay1Ogs+sWrRNHkRNSh/m34hnO6IYIyTaNM
	SbkI5nnEFUvTxcx2cWipJDJ3qROzLXAFFAa1v6Fo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657681612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xu1bgiBLiAR3pCVZzeNcMW12fLOAs7A5Pm6Hn5Ytrls=;
	b=VDphXacvLm/G+vdwxjn8/P8BtSRyp9llZwmyY8vktYslWRMJ8fn0pZYCA1CJUlBa
	vW7Y5mvDuY9MkxheETbQHB+6CfH5Odx/AaWCNy5xCFYk/MEg8Q17w00Zf6eyMz5AO85
	O08D2wtQPGRipgFhJ1+Hol6OryUQvPHOnZM+mRsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f5860de0-351d726e-6fa2-4ff4-8580-4d1ff242d499-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1aa20b9d98b020b47fdc5e245f40f64c68aa45cffa09815f1b153993ee01900
Date: Wed, 13 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657681612
