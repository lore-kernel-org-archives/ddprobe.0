Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BB77F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659495652;
	h=To:Subject:From:Message-Id:Date;
	bh=XTSHhgksgL7lwPDyyZFx19WIckS65bU1kTHX9Nr03Dc=;
	b=eQwcITytmyTJ+AFzkBKmsGCrWYgDghSdLM6dRdk8rLQ+JqiHHbmSp0+4AQV6iCvO
	4ifgBFdMxlnZFn4+VGPfuNNY+fzb3+B6jkmWwKpo2Xg5W6QhFhBF1/IDtj1SvVF7KZL
	PoWrSHsUeKcvZT4DTtZGtaSrPyWin58HZYLnj4ks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659495652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XTSHhgksgL7lwPDyyZFx19WIckS65bU1kTHX9Nr03Dc=;
	b=c5vNW3WftYyRZPhNbivwk5TIWqy5v4zIWutMQyWE34e8xMx2leDceQ4aK/8NQEY5
	+aAlesUeKeni6N52LdQPZ0OL+5MVNEcR96nVi9LO951sWAsyzOHMHX0/iSt9rTBDnio
	gtLSHAHQTOBpctef11OhPEJU4STqzhdMPGeF9/TI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018261a61cbd-f72a1fb4-a0b4-43df-88e3-862837939e17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27cfc87f3a60a18dc03d4d2d07d15cfacbff7dc858a131e789cd7087e8e2a3c7
Date: Wed, 3 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659495652
