Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634A820E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647750084;
	h=To:Subject:From:Message-Id:Date;
	bh=T5nXve73+vvNy4183dxGFJVajwPDCq0LkHGfSHuLK7Y=;
	b=OQJN/XSQyuV/eYnRkpFFKPoK/sLa99b2zRnx9O7vKEKSrsP/mPY2+JBkuOMYURwP
	VC6qL52Kmje5vh+bEi1JRQzDDEV3UGh4NvuqhMnfvb/IDUets2zSGGJFSvKFrEbmqtB
	W2tjZcQzgOXqWYhyjjMVtpwNBGrs/PO148qU3Zuo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647750084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T5nXve73+vvNy4183dxGFJVajwPDCq0LkHGfSHuLK7Y=;
	b=CXUVVouKxqsGF0bfOOrM2dbF5Iq47hcWArxpDQFkwzT0Cr+oqAKViz3qKXccgOtx
	jqyNzGeGp6Dq5eZTZo5biobc3Ese2vsG/NDsKmxFLnaT9N/7y165hmdhvdJEVrq5Mjn
	mfyvBLl5E74yk3LNMaBAYsa8bM1zOEjT2rNurq1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa58ef86e-68714399-8492-4bda-85e8-fc96bb3cecd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28bca7cc417c1e2597abba1b62b259cc3bcfce9c9523b9c1e2044ee5f63a0b3c
Date: Sun, 20 Mar 2022 04:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647750084
