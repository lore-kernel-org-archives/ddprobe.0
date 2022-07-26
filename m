Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE342590
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658846453;
	h=To:Subject:From:Message-Id:Date;
	bh=eY9rBPaRfrI/xGzG1zdCrWNfO/HBjOZFyTN/awOqorE=;
	b=awi7lsifPU3AnpUv4T73cV+Sc77FvM3PynZg1Ybuog/u+K411GC25XEpOpF2SaZa
	CmsUjfwH+I2XhZmDJpeAW5vLUNYqc2Ve4CV16iCJ/8W0XKcsDRcXQE8mehvCUdhMyjC
	+ajH2u2U496ZeL9dZMIk1ooyZjCy6osYeYZf0yG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658846453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eY9rBPaRfrI/xGzG1zdCrWNfO/HBjOZFyTN/awOqorE=;
	b=QM6G8T7mhDP68u4sIE4Qh63u51QFpDWIa2LNkcKE0YA19FYGEY8deDXybVlyGnGb
	/S8pb5+Ua4eGGoFVt4iU1Hw7KRZ51Fqb4/+BG4EP3zwRZEhdtM4+Ae742043JsBf83g
	PSZSL95Lfx1ncTL+U12QSUtTIFaKwM+utfcnufYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823af41bc6-3f2c6198-1d2c-4fd1-8e7c-9e1f8e6971e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cc14d51b3a1d82888d53c4a5f1bf212c8eea58676ee1f9daffd67bc71b1ab54
Date: Tue, 26 Jul 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658846452
