Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0EF258A
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 16:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649436538;
	h=To:Subject:From:Message-Id:Date;
	bh=vGVW/v+4+NmzyoI8Qc+KUiEtZci00BHeVygm0zmnLQE=;
	b=mJYXk9a1vxo88uKR8vyjVh9qtIn4EK2GnGgPYrXsat5XOgqsy5OZ63Fi4hXBueyf
	K62B+5dmrYFphvaQsYVwLlrn4KgiiQTyNVaRsT2dBtLzkVDG+AreYVGW4uBeg1DC2jV
	uYulzYsfcgxM3ey4lz6wF5HDmQEY8lnMxDW+LGzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649436538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vGVW/v+4+NmzyoI8Qc+KUiEtZci00BHeVygm0zmnLQE=;
	b=Nu+tvC4oxupjLVb3OE2Y7uvIsqhzpaslDe+rNyNR+EcwL1LkfE/psd7phR+T9jpX
	W8SaHeSWvRAHR30P4hEIrpra4uVx7PUMy0M3X2K0HD60+frU5Nbki+zIERih9sOqnUO
	eI7szZfZsr6CS0MBbLweAxIha3V4y5i7dEu0LHEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800a1435c9-3e10f4da-9af3-4d14-a54f-9d48e892eb3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bea69be200a1c1fb3da4f8b862a78b25ac935eeeac65fe542c5568af8d7bf61d
Date: Fri, 8 Apr 2022 16:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649436538
