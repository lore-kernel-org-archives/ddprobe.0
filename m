Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D731B75
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647329784;
	h=To:Subject:From:Message-Id:Date;
	bh=ZeXbZj4XiZeOWtUYDU5VhFuMwZQto97Af5yhGMSQNMI=;
	b=RN3Bn2wrxdvT+GgPcuvz9fgfPA3YRxHVRaSKmdEfZT3mGNzP3MSo4otThD4TsCVw
	1yVZXVJf4OQPHlnKQ+jrd5bW2q+zJlD/gUkNoU13B4+qW38x2wwDekpBLjjStwWarRw
	/Ht/BUKn4ZpxsFqw7Mp3339vV6LaH85g31HZHRKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647329784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZeXbZj4XiZeOWtUYDU5VhFuMwZQto97Af5yhGMSQNMI=;
	b=TxP4kreBfNVecHEGASAIcWX2pibiCTrhfIfGFpjMRyRYj0BGYT8JQObP+0vTlYt8
	IWHlLSt5qV3Z1pJLbZnce+2nXGD77XrPPYOkNwVcVuz7DgrL87ISAwDre8GEzPNrtol
	egWYHP1zFsfqmFH7OfK9mKzUuQ75EU2x3PFOc9NY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c81b387-172fd62f-8532-496a-900b-e0adaf4025f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5077468d0e7c66597c76b92b155abe7db3f69e2ce48550bd8f94899c3db9f8d5
Date: Tue, 15 Mar 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647329784
