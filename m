Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB1A1377
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658751412;
	h=To:Subject:From:Message-Id:Date;
	bh=ntNxs7xQ4zI0vbZr4XCzesfQArKkh+p+A4TK90eERJ8=;
	b=VRqJ62y9LcRipyyWOtemcPDjkN1QBrN+bq1VClKdM2XSQSXDyCUEOlyhpEyikJqt
	8IfxZzZAJf8/BguX+vsX43/ElALJLdWk4MWfNjS8hDtVHnCgCfcg1KtIgwRjlFbKQie
	dDq0SF6z8576W6dd7JApEA0a+Ekoz8uSew2AWauo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658751412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ntNxs7xQ4zI0vbZr4XCzesfQArKkh+p+A4TK90eERJ8=;
	b=XueARSN2pfMioh//6U9smnIfXA1ZhltMiy9Un7kmL3AJPSrDW4IxffHd8P12mAQ6
	Akp+x2HwlW6p3vJcAl7tXkrd4beK/e9Y0ZoR03qFI74+CtC/50SZ30zLvaeYQ/mthck
	uKyjjY/AfZ7XmX8Ozu50dd5NAHFptn/te5jBp/pQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823549e888-8161a4b8-f19c-42bf-83e6-74e85b6286af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c5ead38fc556417ed9c15b364e7bae37d7036e4577b23bb30be51c188c86790
Date: Mon, 25 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658751412
