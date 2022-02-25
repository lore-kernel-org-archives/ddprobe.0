Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2487C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645747885;
	h=To:Subject:From:Message-Id:Date;
	bh=VrwHAVINlGu8O+YOFof8eWNNP79XWPxkpAzux0cEcRw=;
	b=dnYYuwfmTSxptsY+GTHxSR9F8eY8VQPUecdxBR6Im9nXrE9PNjVj63PcZ2EbtaOA
	QhgM6g6b9nLdMA4NmrYBHvW0WX+la+qBuRxtIdlaRISaW3L2CpJBDjFwU1ZS22XyaxK
	Msyei7AHa5qj+KI0ZUaeZAYvEQCbGBoYNgU0Vg/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645747885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VrwHAVINlGu8O+YOFof8eWNNP79XWPxkpAzux0cEcRw=;
	b=bF8sBpYKvKfu87LX30Khmr0Zm9U1vm2TNjo3J4+rJtgG7ZNh62uz3q8Guy9sDgyh
	/PIl2PctSKaDm+CFjvOFIZxEmr03slLxNdwFZoK9Mf1iy7zHVxABS8spRj8cooKKNQC
	imzUIokNEVc+xW6jGk/fxtCQHrdaPCdXay0dTWb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2e37d2f4-8ac6a37e-0b95-4a6b-a08a-6a574ee39a7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e996556ed58a03da2dab21c298c33d6f633257268be216bf6430d40f8ee6ae8
Date: Fri, 25 Feb 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645747884
