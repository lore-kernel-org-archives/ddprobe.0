Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877D9179
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645343185;
	h=To:Subject:From:Message-Id:Date;
	bh=KG/mIIRysixPyUHIkvAXtyM+c9ZSsuX6rFeovZu5VLc=;
	b=lfid+0uPUWvgjjNJkSJfZhelnDbhgAbwp7KlqEQ2lOivigLhDzxKIyTXi5uffjiv
	f7+8cEmtNmj59HrfMw5/piGQnur3ru6VVQ+ggikx/w/x+jkOGfHEEweBbleprKlDpHq
	cXuc+OGjEd2l5LehczgMpI30k103c7CudgsoYINc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645343185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KG/mIIRysixPyUHIkvAXtyM+c9ZSsuX6rFeovZu5VLc=;
	b=T8V+7w0LVfMowfwMs2VBp9CkWbWPLk34UkPHtkN1y5Hn+jYPCgqIy6ig2jNF8x/Y
	wuzNc6tNMDR4qq+mVvSS6HcQ0Qx3nouY1vzBfqz3Fj7I2IwfHQH7l2yy4iCIzurrD+N
	NS2eHPbK/zb0nrpCvK6qFwOt/UB6CnbBsglAS+m0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16189811-104b6ea7-c00e-4ed5-b8bd-94a3d75fc2cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e1283278a90209b67e9dcf51246d1952e42d4db301bbe5bc72dfcaa7b4aa469
Date: Sun, 20 Feb 2022 07:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645343184
