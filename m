Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48C42581
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645444885;
	h=To:Subject:From:Message-Id:Date;
	bh=sgrjl04LA+V5Jkt/nC4qsKdUwjxrUoWXD7r/fHD+uuc=;
	b=SwVJ1b8SB6dseOatva0XbBnaNVczlgANkkqe7pz4SMD1Qy0h965BzmFunreNbzma
	BEFA6sVohDUQXd4g2wNxeFaunh/mZmSUtcSAOH4+hQN7VAqNTi0w5X44BSNLp2+1nSE
	Luv+7jEsFyla6Qjz+zhmmXq6D+l7wJnxZ43x5l7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645444885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sgrjl04LA+V5Jkt/nC4qsKdUwjxrUoWXD7r/fHD+uuc=;
	b=b7Js5l+ps7j4UcuFL4SCLqmsz/c3yGACxUxBMWhPNKmZTqSgBVGb5cBEgDnxPooj
	7t+eb2iAC09s4FfNWYW4ysrVFoy6rnFF0paYH2aU1iK6CCwy8d7GnrJxp5TrIXkHqx1
	1Q1FfqXB3LyeFhbp+DF1YYU/8X79ZCw6/190w0/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c286937-f214daff-c5da-4ec0-90e6-ab38337451e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 345bd1f679c36cac6a9023c678990a2005e09f5d3ccca83867821234b0bdc500
Date: Mon, 21 Feb 2022 12:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645444884
