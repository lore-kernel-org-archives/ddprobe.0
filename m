Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE56A7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645458385;
	h=To:Subject:From:Message-Id:Date;
	bh=5nz5ZtaAd6PtucxAzvT1CGU3rVuTA3cuNJsZ30LEN/o=;
	b=MKdaQejKC2w61r1etGQgKuNCOO7BJLXRL9oJErp6nZoWEbvGsBUg9lqImCwwtCtu
	C5o63JR8o0zNsCFMtqAmQsmGOFbQkZUJlX/Z3JU62rWUYTRAJNyH3O9MwRwTdT+2Yus
	QDIYh1PnPg+LMYaWXWzmolyIw6H3lg/+cfnmcF1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645458385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5nz5ZtaAd6PtucxAzvT1CGU3rVuTA3cuNJsZ30LEN/o=;
	b=WmFmiv3JRvD7pIKJP+QeONMmy7YlVi372bDr+xcem6c2i+yXxIgnXbhfq9Lmm5Bg
	usFR6OC0ClqqDTieHVTxZEDTm8NwwPtVpKy+OG88T8Y5JX0zHqn4U91l7sUO5u4DEa/
	2U4oAkghBNv0th87NTPbqz5q+bPqzSrJwYMHQB3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1cf66795-d8aaafcd-bc74-4e9e-a885-57f15f00d0ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa00d09692027ed8121daee7400b3b5773349d6be0d529540b01ff239eca23b0
Date: Mon, 21 Feb 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645458384
