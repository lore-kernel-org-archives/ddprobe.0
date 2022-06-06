Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DF67C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 17:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654535999;
	h=To:Subject:From:Message-Id:Date;
	bh=tkejhhVAblbjugJ2SaY5V9clulJjQ5dhSy0Xd0sraoU=;
	b=PKNzJxkn/xyhyGc1a9lDR5iCE3QhX1WrVEHfgblO/S6mMpAwiTORz6zoy6529GLx
	FDaXsDvc+tagA4xsZ5z4zaaQr9juV/pqEjO+SsqINfYc9MGeMgvwwYhxlHFtpolC8/v
	MEzNl4PUrFpZtUc9SkJTA9RtWQ8rvtAciJUkFBMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654535999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tkejhhVAblbjugJ2SaY5V9clulJjQ5dhSy0Xd0sraoU=;
	b=XbJaCAXTqbx9vWJblHyI2bje9Jg6oPvLk4IVoMwfEfDyMWllYDU6AYbHLv+VD11n
	viVCtQ3QGaF94WF4kuxgXmFgAeEiJ8wkeyfCR/JnuG2qPWb3LcSnPBmN10qiQkWfvbS
	WkzGn56KRreoT+Q1CZQS6Jy244PQO1Ik1z3Ijiqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813a07cf2b-d8cde0b4-fa0b-4e15-94a2-75fabcc68f34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5813b9508df1f49098fca1149dceffa5ee5f1a934fe59edf857f82259b954c76
Date: Mon, 6 Jun 2022 17:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654535999
