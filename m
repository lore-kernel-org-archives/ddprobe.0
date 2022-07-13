Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599704681
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657728412;
	h=To:Subject:From:Message-Id:Date;
	bh=0qBtjyXgCSy+APzDrdRT/3sVHLbmSo9PUXkMFTICOOI=;
	b=cLAB3N4E9tqdOH2Yrw8mKg3T8al4l07kuA73psKTS43lFLPGns34dzvaLXHrM6ip
	s/4YO3bBg/NbO6AVAIIjJj+ZO9iGRWVftk2mlUleYw+YzF7WOZEHv7hao5dc4CuqBhw
	ZvFCwSN55N/563AwKePbTE9m6Tji7mw/UE7ENt4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657728412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0qBtjyXgCSy+APzDrdRT/3sVHLbmSo9PUXkMFTICOOI=;
	b=C08NyMEAXi2yfJOS4MHkZUA4NiB+180C7RZW9+9xxh/mVDXIiHkLILr3RfKfMopS
	SVB87R3m8ZAJM0BpuLX+4wqGFFl2dq+7GQ+tCQUY6pMK8gr6gC2ygpKHjYUDbSd5BoH
	ZMAYUzGs1ZrPNnyp/L0tY2kxSBdT75XPdfQQA1RI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f8502ad1-99ef7790-7bfb-43b6-902e-6c92a2cf2601-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bc3234a866d008edffa597bb8730895e26e5b1a99dc9f7f96ec5ac2c227392d
Date: Wed, 13 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657728412
