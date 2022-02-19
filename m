Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E79357D1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645311084;
	h=To:Subject:From:Message-Id:Date;
	bh=3Ga0H9G+F7ex3WbHZf78ZHvA3c2pjGadjrug/rGFUnU=;
	b=WCAf6oUpUT+Iw3BWNWrQZgs49JwD8VT3l7+mWR0+b5GE/FtF27jnqywLBwwkBbwA
	2/FHeQjDwGmhwWRfA37TEKX2nY1eX4TxB4cwDsGzQzqM+SLoafVcluZQMbjwqUv+P8j
	NpdoshxKQk2bS9FLBeZYkbyWl2bO4tfDRDBWUbhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645311084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3Ga0H9G+F7ex3WbHZf78ZHvA3c2pjGadjrug/rGFUnU=;
	b=c198816YyuOSnfL+r19ikI7nuKaQXFGokfQn+DRSspYky4WFdmLiJ5pxbcdazkA5
	Q79nE/d+ypYiNAYcH4aZAmIq0sa+mJDXeSdntZut8DaI2NfXjmc5Kk5BuWbCe7qxDQI
	tCl+81LdVxA63Y7eqA823Ye77unHz8CamW+zHN/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f142ec8d6-377d6017-dd3e-4d14-828a-bd8d25a040f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2af0c857c567870fab609a2c55349672a10a8d6d300f850a70df46e982031e86
Date: Sat, 19 Feb 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645311084
