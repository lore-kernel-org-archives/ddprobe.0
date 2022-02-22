Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A47066937
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645566985;
	h=To:Subject:From:Message-Id:Date;
	bh=Er9Ov3DYE/1Egp9bMosR5HzXXLlq5qeyijBGWOXiJEE=;
	b=a1kw7HeLKaKBgoG3jL1M/HCXMAVsHxX+S/HuuJZ+hVtKwGOal+YWCE1s7MnqgQrb
	BRXNiI64MHg1aSvlqX0B+YOcbQ8QFr2D1fdnMYhQxWGd5Aw3nKEDIxH4sH0uX2VsDUg
	pGx8CtNyp72hfI5bioH3XtH/U7Vg3rQcKRqHVJO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645566985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Er9Ov3DYE/1Egp9bMosR5HzXXLlq5qeyijBGWOXiJEE=;
	b=BTsXuDv1SfNjSlNVaP6W8UC0H4RXonUdlTSQtrJzMGGWRgTNmiW0/jXAHdU/mEKs
	8EUtMDSPVC+pXsvyrov92C0QGJEEhmRABCnyF0aC1bWiJx3Dbw7jVNyX6hjPM834WeF
	QA0epUM0z+QBSz04cc9IlGafrLj263CAS9Sc6y74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f236f82dd-1fdf3866-8af5-4472-9629-bf9fea05ea38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af1995dba4ea3a76452debbbe96217c497de9ad0dd4da3e3e5488f759ad8c693
Date: Tue, 22 Feb 2022 21:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645566984
