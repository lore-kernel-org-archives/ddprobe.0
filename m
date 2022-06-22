Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1126A10FF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 06:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655878139;
	h=To:Subject:From:Message-Id:Date;
	bh=HTpFCNgEIcDOmzi0fFotULUTpMsH5rXhoM2kxG910No=;
	b=PG7KgSZxoiH0B/hXaPhrcGPwpO5rbW5owayyzd6WBo7auOUsAv+xwOoZe4sR8hK8
	DQgn23/suCn1chW35Ir7UmiVu/ZuZZDNcKB1Ucx9EeXsxryLMwlusrALU1LsyUhNuzO
	WMyP03O/DofTRx1+SG1ALiBm8WJpS0rvCdtgpqgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655878139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HTpFCNgEIcDOmzi0fFotULUTpMsH5rXhoM2kxG910No=;
	b=VdV7JdxjlratgtrrD1p3Jz3sadhtWVrQQDDCYqaofFUvjZsIL70wlvsb9utZFfbn
	sBds6Ze3m++NungQy93HLO0RQC6R1ihhA71aVt+HKKYcd5qQ0vYLJuDWfHYiDTp1UIV
	29LryNtMdQflPUC0NdBhp62PMg+jgMwgDPg3fDWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818a073d90-c5905596-453a-4954-90ac-d222231203b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cd56d4480a5f1dacfe6d38c2e76884b9c95a1d456e638210ad82815d61faeb8
Date: Wed, 22 Jun 2022 06:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655878139
