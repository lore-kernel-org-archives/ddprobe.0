Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB6D7B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 03:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655694779;
	h=To:Subject:From:Message-Id:Date;
	bh=rSGEQWVpebt5UmE5CQ5bQKDd8hQL+3sL/Ub5QwN3u2Y=;
	b=hWJ/UyiP8PJ4GfKLi0w1fPq+zZXTdm6RwbLmJ7GbmVPxIa8+wlIA6If/EIkNckLY
	usJzo+guMwpO8rrp8s1suGmTrCN3cbuvxXOGVCVbczhcXkpS9nOG9xoEj2yyK0hLzs7
	DO9mgJTVMVmo+mS1lZzLUiMPbJ+R6qkW7pM+7IoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655694779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rSGEQWVpebt5UmE5CQ5bQKDd8hQL+3sL/Ub5QwN3u2Y=;
	b=ddoF27w5x9u0DGN0ojF2g5pLkJu9YhWb9RJP3OC6T/7CEanI1P/9CuLa+++ZbUtP
	4w+bQuqtRsMRcsq0K0NqfCtmzj4wLddpnyDOBhvIr2PXm2Hx3S3xAq232rcgtPeCWBl
	D2Kdqu4hXMFLRrU0MHmNCwhMUa50TNTQuxnk99JQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f196393-ab9a9f04-4a69-4947-b38a-652477674bfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47a78d5ca25c1129f81f3c6800844df54046cabd074ada0f4f0f4128da900b58
Date: Mon, 20 Jun 2022 03:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655694779
