Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3D7C2C9E
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 16:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651507859;
	h=To:Subject:From:Message-Id:Date;
	bh=QfTPzTDTP2CtZqiV1HPexXBNQDtQHFYmheNMm24SkJ0=;
	b=HbLGdNNEnzeDaPquijykCmGQJm4LBEwEpbJaXDTBphqLpJ5PfpShktUmP0eTL2w8
	DoeORzx8gg5oY+aU9sTh8EKrs/3w4gTaPIPaq22k4cf3sK7lOUdddXOs02AOsKwgV4/
	kpy9TZad9kSKuJkK6IieZOdtvE9rRhazW9FYyatM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651507859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QfTPzTDTP2CtZqiV1HPexXBNQDtQHFYmheNMm24SkJ0=;
	b=fPvUQbYPYwuzmRj3XGCmsRBmNFmCOuOrYWwRGgf/x4Xm1/NuABOpYTFYQQ0Ou4mI
	1vTpN6MooZ9NNR/nRzAZ6Cz3UBof9WYk6vJp5d4Lsju3X4KcIKdOvOlq2zro39LeTle
	m/PZzZ08+baraEd+anv06+32RMgDCeQBbjDKuBog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180858a0ba4-4a7b3b26-a5f6-4d7e-a9da-23040cb3191b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50a6bcb70e2c918de95b0edbbb7838c52240e6215a7e72c315c67c88dfcc391c
Date: Mon, 2 May 2022 16:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651507858
