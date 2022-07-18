Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7AE2562
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658153212;
	h=To:Subject:From:Message-Id:Date;
	bh=1GMOmnwzuMYKrugLklb0LzYxv/mU0BA1WkNrLHr8h/g=;
	b=BL3YloRQDdv2FVhJ9dTmSxS8C5OGY6V378kgINsWvHrf3Tzy1ljT5WOp4UEOJe0j
	i0hj8Gj6cZ9+68jtyEgeLVGXTl0Qh+ppylZa4wRuX0MPDuVjtwcVMQkAyVgDx+brEAt
	IySQQB2CByRd55L8A2f2DuNuxGxuHgx1HBLGrUJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658153212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1GMOmnwzuMYKrugLklb0LzYxv/mU0BA1WkNrLHr8h/g=;
	b=kOQnEu/h/TO2yAnxgBPt5GXDFMkTJuUG9zKNw2GHBMATrEXaWcnZEpcvtmAe6RK/
	TFdp4rAO0u13lsxPLjkw00CeewMfnuZTNqDQRo5uFv7S7z7Pi+d97VEOh+TLu4YQHpO
	oc/v9UoXMVfmjy9fhGnbs3B2Mrx54xzubL9Lz1Is=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018211a21967-5c4962be-e99b-4d43-a0a7-edeb72d799c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e6666134d9b5576191658719fb731f05675bdbd455052f7c98a8f41db1f2efa
Date: Mon, 18 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658153212
