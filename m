Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BE0A20
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 04:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655784239;
	h=To:Subject:From:Message-Id:Date;
	bh=WYgJ1GjZ7YqpFT1jCx0c6hnSzTf9sCHDTlQ5ho4d2DQ=;
	b=ZT06De2rWKV4b5XUfGiQf5PqNZwvYLFKPfX0EsJ9gHk+RKv8PmPe7qJi0YnNfh51
	751xD1Df5RZWuAB+Qo1T9DBwz1MWX6e+uXCCWWrIqi6nzF2qRB+LZehlcxKeXE2+eJE
	n4/YChNchUefOQbpbnrDrCPP1A+kwuqQh47InqSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655784239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WYgJ1GjZ7YqpFT1jCx0c6hnSzTf9sCHDTlQ5ho4d2DQ=;
	b=hNnUsEY4+e+g57rkyoMVGXj1RBRwjEg6uUozdXEfDlqoq52nfX/ncLT7FxoJqOrQ
	V3U8S+p9i7zVeKBdDjCZYQSpE02BeisolDefperXbcc2+VFgXte1H97CxYilmzXv1Xd
	oxYZk7JDmZ94ShstesVdt+fzdYtgf/t2U9jV/ntM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181846e706a-74252627-e18d-4b22-86e9-fcfe23fd8678-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e334e7dcb7bed1f91f017c7359bf72918f4e3ef2d802097e7f556b0731815cf
Date: Tue, 21 Jun 2022 04:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655784239
