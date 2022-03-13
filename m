Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33275A40
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647165684;
	h=To:Subject:From:Message-Id:Date;
	bh=VteqBmR8nf4MAsj3GZQwhFCR0YCq1zmjoYvWT4DYVBs=;
	b=VifhYjMLhKKezNF4PTGk7Xyr0xQOV1cgRwa7gKsaUMCjG9NBBItCLgJkremmv0qn
	Pib0mkMdXbRxClbyj5fucUi3mgdVrzFF6+t2ICHJCQAQRoaN4cLlJxI8LSx6tbNS+ZX
	Mn81NnyywOx5n0+zFMF+aEWds3+KX3DFaZoj0xoA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647165684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VteqBmR8nf4MAsj3GZQwhFCR0YCq1zmjoYvWT4DYVBs=;
	b=FumCWYzPaKfMlKX4XQ/BgfcZ+HzivP79f6ijCHNjmkKDH8mvjk2Q90kMjlYa/WG2
	Z7P6tlSCrLiBapSX0zCqU8D+NFi7P61ESUkIi7WbYmD2yMPV87dx019ze/3o5gNw79Z
	vrQMvyMtc17r2KMqRvXgwyOFf4lWJnHiR/1Ot42g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f82b9bbfa-774a2c7b-f6dd-4092-8eaf-f8e7df2e945d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 927833b9987b4fba332be6c5878ad513181fbf1271f3d616060f6567ddde309d
Date: Sun, 13 Mar 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647165684
