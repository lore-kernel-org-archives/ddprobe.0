Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6119117C2
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 03:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657770412;
	h=To:Subject:From:Message-Id:Date;
	bh=YmcsMhEWTsh5Kc/WDxalTXgGViUDE9US6GtTEjTReEs=;
	b=PEimIO5HbskB0vvLqEU8XH+u7oED+AX/ihuSQQo2Z933OtMqN4KrfAS+jX7UsoeC
	QJTEny/DfAo3JWeTn+eej4sp+jWcHrODGqqDrVTejpFbTCXWopfTlvZf6fecLPeqp9m
	CtaWhXvdi9YTQnu+Pf8h7wq99rVS0CvGictLF+d0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657770412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YmcsMhEWTsh5Kc/WDxalTXgGViUDE9US6GtTEjTReEs=;
	b=Ntt/4ynqevGsIb429KlnjBMDkhZFK770/3DfmQZWme+orlS8xRSoLu/pyqnGuHgC
	UEO1NtmcNiQw1nOCs69QQR1z5VdTlHFclxdZNlmyUwNnHjkpQS1TjPdeOhxfccfr97d
	9nvI+jRkxUOoWXcXiifUdvN+h1YCo5I4CVAuDkq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fad108ea-d2b291e0-d88d-4a8b-aa23-32c4a70a22df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13f0cd4c0c2f273d89a34b116d5b5572d8645d7ca19abfb394b0f23da1b57a10
Date: Thu, 14 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657770412
