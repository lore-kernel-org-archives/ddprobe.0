Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE0C33D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647784285;
	h=To:Subject:From:Message-Id:Date;
	bh=AjpVzPBeQCOzgvIa8SSRS7ca1pqkDXLT6P0mdGY78/A=;
	b=a1uxRg8oP4iJdkNbvKHX16vW+eqJGS8MYWaO1/2JCe9Lr7gOCGwC/VaYyJSgKs0F
	Og1n09PWBZ/xIDNN4UzG9EKmUOfVAwjFJGt8guEN/ktf6GWmvYNGyG0ofDA9TmjB0Em
	JbFpWuaiA5HAHITa86K/8YH1HgrnPZyjdezRdtlc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647784285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AjpVzPBeQCOzgvIa8SSRS7ca1pqkDXLT6P0mdGY78/A=;
	b=NEtK4tuCI0RrpASetYr/7zTxifpufrpQh+zYLEOJxOIWOvqReUF7489jLIvaWp56
	yj3u6+QMjgApYQpmuD2PTR+nZi1uxHFs0cwM+Ns301jP8Y1VMtIMxV3K3IrKFq2m3D6
	LwCqGR7x3nZtquqQbZ6CyfGxIVsuaoenItflSDDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa798d263-6f7cc7e6-dfcc-40ad-ae88-2aef1b0bcbf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be8bf355f74d781b600798b52c7754eaf6b7f068f03255d759d7d7a8623078fd
Date: Sun, 20 Mar 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647784284
