Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C1815A9
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657690612;
	h=To:Subject:From:Message-Id:Date;
	bh=x1ixPM/ikrYlffyTTUxnUsoF1CKcowG714TE+l6qE5k=;
	b=ABgZGyQJeq6UWua0ypFv2kQGQ0IYBne7uMU+RwZh2ZqRV3PeTNoyktU6NwUFXxik
	ZDjyHUczmw3eLzZPo/kAs+SV9jPUVsr6kL4qMUrLACNPiduHt2KG+Pv69nvVEO8YoBI
	pHej/vdaOCulhVu8coVfx/X5ZpAUVafg1eyhxGPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657690612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x1ixPM/ikrYlffyTTUxnUsoF1CKcowG714TE+l6qE5k=;
	b=gRmkKhWABqkvNIGD+z5xjvt3IH4fDh9dRgu1gxTzGZ9CVxPbR1EUwmDO1Vj7fHTO
	rmr4I3FE2t1arsk/BB1aNOMaRO/R5DwkTDq4RnPoIjQhjwAwFibTWTLVo3M9/7kBa/b
	qzuExEqniBnmYQaUBczIQriVHhDg7UpB5op1fGgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f60f622b-a49b0868-b459-4b6d-ab87-c7b5ed036d5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0aa122457e8b3f4663c76971bdcd211d69ee22382a21d6eee9114a990288b895
Date: Wed, 13 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657690612
