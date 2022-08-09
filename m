Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8087F4428
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660060252;
	h=To:Subject:From:Message-Id:Date;
	bh=v3lu8DvZ2rPzYKaCpQjXKnscmcWniC2X9nw3wU5sSlc=;
	b=X3KvkoQoi+tvzpC+Ck12p/uBZlp201kEfNU886PVwSr3OxblGz44x4OVtgspxCY5
	KeXtylCywk2+JCcD/H6t86N0TF/AExzI8jEm0JypKQjFxJPO4tpJ4I8huYnoZWPkybl
	L6a+P3RFqexrnHqxN60Mbs854XVDsEypaJfFYPeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660060252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v3lu8DvZ2rPzYKaCpQjXKnscmcWniC2X9nw3wU5sSlc=;
	b=HVVAq4LJMkY2RAAbdmJkPvAC3oet9k5asVSfvPmAQmRGZ8eTMWaPxHisKWnM+TvN
	pQqoSUpicDIKapu7Q1KnY11ONNcnNWVfY+9yQM0fL1aPCeff6b2WWDY2ZmuOTs3LcW2
	YR5wGpPtX42tmmMvzs615s4rTbOcMV9Z9B3m03Ns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182834d39a1-08140c38-db98-4b4d-81cc-17763b244d2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da65dbd036c80bfde446115f0cd9273f52bf0395ad91b3c5b50eef28e682b4c7
Date: Tue, 9 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660060252
