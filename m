Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8D74C95
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 23:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655507339;
	h=To:Subject:From:Message-Id:Date;
	bh=4q1iJ83YOJXgt5t3Xg356OI56pvbSw7olJKcLwKGqr4=;
	b=TjMCWXhF44zFrN3xtr20Gp5mX7zOHVBwL9s1SX7yK56Mb+mrS0VY2d7EsTXh0Wnd
	UWXd3nTir0dIJsNiw+Ou1MOfC8P/e8bjFwXSF+rhvgsIiZR+eCTnnLekfWHVgAVII2v
	UyicoPE5aEVphytQSa6gqRn8ABvQIiXUNmDPRUfw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655507339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4q1iJ83YOJXgt5t3Xg356OI56pvbSw7olJKcLwKGqr4=;
	b=Hw225rKwGQc+lc8M91+zdGY+AY0Y9cDlOpurDllttSIBK/rPfBRsk3RCYZH27NkI
	z8i0DC3WLcQocqJlkcEie8nyE6MCrXbEQrUlgCL4+rxBwOap4qSz1tFz1u4ZnYZo7iU
	8fadHojK8Ztlj1M3XVuZYlThdnB3YivcXcjx91TM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018173ed47ff-7ab1a164-65d9-4df0-afe1-b7a74b165e6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 584073801442328d4cefd3f8636be7324503bc3cf0ee69594335e175dc9bbd41
Date: Fri, 17 Jun 2022 23:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655507339
