Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A9C6AA3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656455212;
	h=To:Subject:From:Message-Id:Date;
	bh=1IHtDQ8NtiGkOW4SIh9xvSghtCacxGHW8nB5yKYFNHQ=;
	b=hXmsrxZKF4dmHI8aMB9DfocUdiE0FA45hhoXj03/Xa1QKwzriTIZVm831YHoYzXM
	3gtJiQ/yl6dPUqB/3TIJM0kpfT0aoyMUuIyMVqHG9eMj6unJsIBqIJeZYtJLkFc9CBK
	fWZAWpggdEnustV5nP6eqXXlvd1O+NvBn+/ijL0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656455212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1IHtDQ8NtiGkOW4SIh9xvSghtCacxGHW8nB5yKYFNHQ=;
	b=PqpbH6sleB/gGFGFbN/X6KjkZ76LwjHZtkLFRMZIThyyf7M7c9Wh3SD73ootH2t6
	ulNgMQ/N08HMQxYLTxf1Lt/1Em4E6aeHkKSrKRU7SBv4NLgjic26unCY69gR3JOG/Ff
	0Kf2cUCVlWOsJ7fxpAMAPtXWPoE+rBDcn1/4B+JA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac6cacea-75cc8752-aef3-4343-9a72-a5a4318e4dfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f5cbeb084f6c532dce3450d40d0da29377a796728a557b7b2653ab8748ef66a
Date: Tue, 28 Jun 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656455212
