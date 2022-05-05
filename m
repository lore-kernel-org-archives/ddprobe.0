Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD0D20E4
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 17:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651770540;
	h=To:Subject:From:Message-Id:Date;
	bh=AxJOTA7qpRB5hCV3HBkcxwPdKSUDO7bUBdRKZoMRs7g=;
	b=GvQG7Fxb2nYtPLyc9UoBtnUfhZgpLlOxO5FJOA0mFB/KuoVdRCdCk8trceNT5/34
	HcmdedNMSgEfbfPd2ZIbc+hGmxhbLrWeUaBSN5gCPm5Eu5fHYOFRRDfmo+QlEzc/2kT
	W2oIB+BMtpuhz83GhjrJMuDt4kCtKdXCk8Dms7/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651770540;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AxJOTA7qpRB5hCV3HBkcxwPdKSUDO7bUBdRKZoMRs7g=;
	b=JUPrlPkSE7M9fc0/jOm6hv9EnrQF/KKODv/l0ksJXF7FhdYGdZDUwPYC5qQ6p2az
	knvmuDdC0EM1Lq3KkawaxbWP/BWTTJzFu2ygZaILd76blsbsSluDw9EPrhrP9AFUl1O
	VJnQnqecSNp4OB57rHBtTxN+TVbA+To0vw+La0h8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018095324100-0bb95d10-53fc-4d63-8bf5-b69a664f8244-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aba5a9feb7fdeed57b1248e4a8955db8f96be853fde30427af35ceea76416c7f
Date: Thu, 5 May 2022 17:09:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651770538
