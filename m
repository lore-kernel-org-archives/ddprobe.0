Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A301B3C03
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657718213;
	h=To:Subject:From:Message-Id:Date;
	bh=hjDNz2eM7ErT3ACRxXiXj4GZBnq16/MigXmGizfukv8=;
	b=eYMVDLsczQ2zT1I7h8063XbnXk22Sz2hRXHQViFAYJRAPHnNRYb3Al/y2yp83tkV
	qpsKB0SdDDNb9ccwMJ369oa95vqLKdYGTpQ4qcUoN2p3ZQdFZE9tFwHNnM7wI/7/+f8
	qnITvZeMDzq2xTRV4PGvxX7syyImGrxo+I7mQUWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657718213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hjDNz2eM7ErT3ACRxXiXj4GZBnq16/MigXmGizfukv8=;
	b=eWaiGY1umcLgYV0ucEBg0HkPE5Fbl3roRa1ycaUDASo7eFIjuB4bnHRUlaMe7vuE
	vUpqleLKp4eVJJHfrMzl85FdGk8y9lcx9cxqqEKdEz6aOkzwdq61u+9VTsH76mjW99V
	XIV5L3l+9kECFvnfL4nPP+6+a2ECUz/XhLv58wbM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7b486a9-8eaaa769-1d52-41b3-844e-7d04c784d540-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3973b356f41c5dc871024d0e7aa7b2ee1f4f8d10d86decdec1bb9a9ed5a3a3c0
Date: Wed, 13 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657718212
