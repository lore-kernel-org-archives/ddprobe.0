Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7971FA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 15:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648136518;
	h=To:Subject:From:Message-Id:Date;
	bh=lInDoarvy2jvY5kxH9Fd+tD2hYRwuGgNeRCWLYSFiVk=;
	b=haivtCw6Z4v5HLYirunOtwAo5O+Crx209wcxA2KHQ0Xg6dMe8w+Gc38/dL37Faxx
	tlbPq3iceIB383RPmqjkw/3VB38KGe/LTAskC3kRP65w2Cg3NOZciE9H1wFbWKQ/C+w
	+7YvXE2AxffvARU7ybZzwzzWfUPHuLRrxn5foc+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648136518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lInDoarvy2jvY5kxH9Fd+tD2hYRwuGgNeRCWLYSFiVk=;
	b=BetJka4/HVjHoYuBbLQS+HEqSkXmrL9dHtrRlO4vcViVeBMaHz4nB28Nri3G4Np6
	Z1XU5x6iNj2c8TIS7D4loVjTExSfIZehjQdUnZki6fu0CJ6l2t71Sgt0i0mbBt20zPb
	QDU88tAsC3OQtIeC8qVgMKWQKePsgt8CepWmuYQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbc977a8a-22a83036-3f59-4858-bd29-a7aebc8437d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 744e032313fa80472111080dd9025e8e804f35f2e2a50d12e28f1f3f5be18fac
Date: Thu, 24 Mar 2022 15:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648136518
