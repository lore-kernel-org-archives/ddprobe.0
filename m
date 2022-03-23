Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A60802
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648032685;
	h=To:Subject:From:Message-Id:Date;
	bh=pJYCtShDTFvFplCrR3RovnF42VxfkqqsHwwz2VAlW9Y=;
	b=g32mSJJfsh+0QDnqm1CmyBRAB1eiXD6h0Ilx+CcBmjpkUFPt4NUjk3HSDZfvMkOx
	wL+qiSDjOMmkr/L9nk+HrEYfxN3ODs6rh5kUC7cS0FvIYuvSO9TWDmwjdZmpAKvz4gQ
	vP5crKgSHqTE0X0l2G90jtyskzSne/X9E+cMvZzQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648032685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pJYCtShDTFvFplCrR3RovnF42VxfkqqsHwwz2VAlW9Y=;
	b=JPOJcLGlhPoUnw/F7LKToMr7OBnTq3bdGkrc2P2wow7VN9a4VnjUp48G/QxlQ7LJ
	2gnoBXxwkWwtn1tQfq+M+e4brGCUz+LjUfDkvqjStSY1yrehCPV7dsbwPx4NQNvmXg5
	5uJRokOPA7wcMfTmAEMhwXGlJaasQXQyGf/EOoOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6671b00-3a50e714-047e-475f-adc9-e0341ed67b83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9fe5a362418c464868dc6410bc7c58933ceb0babef567262234a0bc5e880458
Date: Wed, 23 Mar 2022 10:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648032684
