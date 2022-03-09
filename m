Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C928647D
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646799085;
	h=To:Subject:From:Message-Id:Date;
	bh=1hM4PGiuJ2z5+kMYSYFlH12t7GykekXp4X1oOfqBiMQ=;
	b=BeE0J0ULcYp8c01zhogVWFdcz+4ghxpy3aE7ANgMOuWBbRZO9Zh8OAQVqc6Gz1pG
	nhUpc5xuugPt9Qf+1a+4xSuxWBjNPI76dTIy6TIlrTRZYOpNB6sOk2Z88B/0f6qtCLj
	IEgfxBLXq1PwH2DjgdX51MXO5cy93X06GYgGEp0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646799085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1hM4PGiuJ2z5+kMYSYFlH12t7GykekXp4X1oOfqBiMQ=;
	b=dwcm+BuCoOO6cucb2B4rDjcZDlEYahcgM7yCYQJ2RKIV6A5PjbCyKaiRKgZw0oG5
	eOA+vUETTbuaGCn5gHD5TcKmVqCqPEbnBZFecpS843H1erbEuspK49v6idr+ywpM/P+
	bHYhkQghCgDFtWxkLUqiLkDXKt+2xu/m0l8TXpR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6cdfdcac-67287049-4de3-48d9-b4da-4c6697b4f21b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b3b93e8643d0fcb9755de395eaff5ccbd7074af697af0ea6b5eac173e6ed0e9
Date: Wed, 9 Mar 2022 04:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646799084
