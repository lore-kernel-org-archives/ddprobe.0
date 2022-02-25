Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52131B60
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645770385;
	h=To:Subject:From:Message-Id:Date;
	bh=jLSZbs3bv22iiBcIYX+w05XPOYUutfYSd1Yl7zfc4GY=;
	b=W5cQum/7t/TXRVysmQodvb7zE8P7zxzINQ39cageWVXhu76+gcx2euA2YfTZ8HaQ
	BodRTchGLcttEq12lKzywEgaHTw2jDqlmrdtcu0XxVAi++Y65HunP1DX9VV1Y0rbSR0
	0ry9rLGgKqDEqqJytoQ2dr+A9QGUa1U7n6Nw7Z30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645770385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jLSZbs3bv22iiBcIYX+w05XPOYUutfYSd1Yl7zfc4GY=;
	b=YeM2kD/z7JvoQgXR33PWpHkX/4WrrPQS5IHU/G8y6ttjkRMaCIi/xRDLBoAF8oZN
	3OMPzcocJDcSqD0jsPvkjhaavQYzMv/IUXthrgckyEu4t0pyE5nlbhVHymUjC7UwD0U
	83vYDqCKave2/DqdagZb3Cyb2zTp4FVqW9rvrtsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2f8f2571-df396304-f2df-4f00-8f2a-c048c2b7b7b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30d7fad0690ba7680242239608294d3482e6aba8ee85a4643b2d02e3b8850573
Date: Fri, 25 Feb 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645770384
