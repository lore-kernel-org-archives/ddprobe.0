Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B223207
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 14:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658672212;
	h=To:Subject:From:Message-Id:Date;
	bh=5X/glZTQyRw+rF5+L287WqqGqCsKyERl24iF5c59KmA=;
	b=ANAl74P2ccLQwlPP+Ct1gBqMeRjlhi33qDiDFwJWHNiMQVj3LE2Y9pmC0ND2xyO5
	fpRe4GqQ3yasx3/u6gG4yr5U6mu2VU9BAwY/hgnSKISNnWv7zNtCYVwzbxJPFu4heol
	cPg1+ua3JrNxjDnI8jp3FhUn5tHVIbdeIS/l0Emk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658672212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5X/glZTQyRw+rF5+L287WqqGqCsKyERl24iF5c59KmA=;
	b=F5iYdCe+zFiKWNqC1GBGp7SIZk8/NbwLmsjosTm4HrYqLB4nLS+tGpAzTXMf805D
	d/ps+LEjLX/a1aCFx+wCqY7JT/IGm6HA4Ii7YPsqwVVoStjKCKYf7C74ssRJzIGrQDQ
	Mj8V8lY2N5wZWcy0yhSlINnT4Kp635IdXqguFCKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230916937-55664f27-62bd-404e-bb81-5284404490f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e9174fa87943c41b0a7f57fe09297e52c9b18fd6296546d98e3738a5a3dd7e3
Date: Sun, 24 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658672212
