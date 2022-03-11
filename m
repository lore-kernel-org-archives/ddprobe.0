Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99B233E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647015984;
	h=To:Subject:From:Message-Id:Date;
	bh=vHX1NiK4SNc1q6MvFycjeyp+eOfO1y1CmlZEsvgAGfM=;
	b=hzAMtCBf5pv5XgCCrhhY7Ey+4LiSZnyrH84xKbudHf5JS+O55yoeRqjqTCQnASkJ
	nTBgzveGu4TTOOnQrJ5BJgm7nHBIF4NXttYpQ27BmCgpVWfaXqdkDBtvRyQXdQNc37z
	iv4ewvXqnzHtNDrXtGIYjHfGFJN6ft1kf5I9VjXw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647015984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vHX1NiK4SNc1q6MvFycjeyp+eOfO1y1CmlZEsvgAGfM=;
	b=Z1MtJtzswJJNRnT6Xcsc3vj9J+zV3Q9O2/EueqWgqf+z9S4K3DhLRiMd+bHqWl+t
	Cp5M5cbxPYXovUpJFtWSqXm1cMx1fJlemP1lrlttBzK0ZxFNQoacW5EsY1GEwfhTJUj
	qEkvTLmeFkQWhFgbLM9k1+xTVGYmiJBJ/ukepb2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79cd7e62-7185efb4-aa8f-4a86-b001-4851ce26ced8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f766168c4f39ffa9fe7ab0f0849f477d0dbda318098a6f1ddabe37aa37311e6a
Date: Fri, 11 Mar 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647015984
