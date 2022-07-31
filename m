Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673FC23C2
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659270052;
	h=To:Subject:From:Message-Id:Date;
	bh=zH4bOb9w24PTOEIOuu5S27mkOiztbDZUyvMRI6DXYJA=;
	b=LGy8CFdLG3g1/HO2zr+x28IN5GYBeGI/r4fgfmBkw0EBbFvTn2TQgKx//kOC91yM
	p1+C8D+Sd6/EnnGK2tVfteu8P0wm9eRHcYC0I/vZrwnWo5fHoULW/s4mQvc68t+e9g3
	WG6zqKaXLdyQnYTHWUnPiiJ/8rLo+PcLtti97Seo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659270052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zH4bOb9w24PTOEIOuu5S27mkOiztbDZUyvMRI6DXYJA=;
	b=Scu+hmk3nRLhTEJGM11eXV0UQ3aayrvHuBJKJ06Kf2cIaA73T5H+gcDEEiNlUNdB
	SZaPoZWWulkdfFi8u1CAaSA9gcQ05X4arT2Zmz+MNHVSbePzgDGNzM4TqG8LvMWHShZ
	biwlM7E1YgitIXvWJAK6/dLKoYdFXQh7r9IaX5UA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825433bab6-47089f58-3974-4136-b74b-9f5319070422-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 702714dd2408d13db96394a46aa862ae1fbc2dc6e41781497a64454049f62177
Date: Sun, 31 Jul 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659270052
