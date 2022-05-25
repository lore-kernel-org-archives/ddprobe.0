Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23392321E
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 23:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653522179;
	h=To:Subject:From:Message-Id:Date;
	bh=OL8kOXpVjLJx2Ttxe3BfNTCQGqF3RIaprdV+Xl519C8=;
	b=Kgb6ZgABYoaHqH8yUyteNwzhuhw3YNejX9E2WxG85lc0qxzM1WtsrLmr+EDHZCtV
	dJ+4/kj6pwEo3R+oeNkXXVFiqbuHfNIDRZLSncKuBdYGg0P7InMHkTcgZmGYfAM5z4A
	oW0Y9B4WhRBNuhnX9iLtdcpOsu1VxMyrFIxT5yvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653522179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OL8kOXpVjLJx2Ttxe3BfNTCQGqF3RIaprdV+Xl519C8=;
	b=Ps+0vdnOn8HH+I4jReXubcu3lu1IX42blpkHi+y3nSn9R09aLMHLEpzfa9IJvpqr
	pNDA2RZbjHN/x1j/CxfSZtRMKvFb51P9+QsOdF5gRkdabUzkR99h67/1p6EKNXYtRAn
	xN0UW3SVgG9Wh79HYN05SlW2zYcavjuyE1itghtM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd9a24d7-b6d19030-7d9d-4b08-b143-64a72d3c5dd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7314bbbf2744e2a87e98556bdccec3a84f4cf908b978c33da3a45e0cbf1a09f6
Date: Wed, 25 May 2022 23:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653522179
