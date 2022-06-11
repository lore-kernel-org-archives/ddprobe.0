Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6F964F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 03:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654919819;
	h=To:Subject:From:Message-Id:Date;
	bh=8Ixz/w4TuZP650gXoElnbf7nTebZdjhWxcU7InyHcJg=;
	b=fFTXnMtQvVyrbcdvmXgkBrSpN+9s8VD64UHwWKQz37rVg5H5fuJh4Rpj+OEuAYry
	E4ImchN4S5eIiz20OCFGa90fPY9IFy/gMiifJzzEvj7lq3riXTLnAxZ2auP7tP1VC5L
	tjvnnwqKg9sfrmwkh2aUROPDei2/nYpy43YN3Xsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654919819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Ixz/w4TuZP650gXoElnbf7nTebZdjhWxcU7InyHcJg=;
	b=IhgglCWZRtRkA0XlpEEIJDYJM/iFDWjZpwBklLoXpxU2CUYeAWxPskwm8ZjQRLyy
	lFInvBvofyLJ10SUqZqsdd3LmON7j8IdVVSHX8WauWHoxvJfnP7WNnydLUerCg72ejc
	69C8uKO938mz0QsSTW/0uPdyqkNWhHvLYyFVVlUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018150e8700a-a3495725-0b0c-4d2f-9efb-5eb617033e4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d03f3cad206d17b827b5c0dde913f5ce8a125b695404a82956005020cb296e05
Date: Sat, 11 Jun 2022 03:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654919819
