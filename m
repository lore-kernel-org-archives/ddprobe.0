Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB5A7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656441412;
	h=To:Subject:From:Message-Id:Date;
	bh=etwGD9dcQJzzMorZJ3WBKEhaZqBP13quOpqkiCvmuig=;
	b=MpxRyV7gZD/U7iJasbrpoxaxba0WE+jieQGJLCgVmCMESWBTdSd6rf3DMKnHlPSV
	0VePAsr8DuxIdrdIxKFK69N1vXR4FzN4ZOAxm9oJsSViK/CuYJWHraTyxUsBIcaj2Af
	P4ZJcLGenDPOU3nO0tgBsq6cuDFK1fiNZyvpPV1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656441412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=etwGD9dcQJzzMorZJ3WBKEhaZqBP13quOpqkiCvmuig=;
	b=QN19OpcjRq1NEwDU36dziWGc8UhJ0XHLNpYxTCE6eStZNKqiIroC+YXPrLfrCf2J
	tHNR/2lhWVdnPpstsxAZ4cBR4x99EE1VZp7RzAfYSmJ2yxHJ3f/QQXuXECuwJB825Id
	C7dVCWHSF/6PXFW7mXIeeAobHB/51Z15ffUA7ca4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab9a1a94-871a43b4-5c0a-4c36-bce1-9a15a4a7c16a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99e12404922ce717fde770202b14bd5fc8ff8f5864f1baf9c58fee89d51ece63
Date: Tue, 28 Jun 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656441412
