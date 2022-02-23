Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605EAA56
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645615584;
	h=To:Subject:From:Message-Id:Date;
	bh=Jyh1mCS0OWNs1sH7rbF2uEjU2GF78NyJKVjG07RzsdQ=;
	b=OXxxe0M+F7qcbYVA1GM/yNiF3roaEpXk8fQO2jucRJI7G6Z3rKXTMbTW8TkKqmKt
	17L0g/2T1oYLEI5vVXWQ2Yf6EKWwB9iWnL67dQhypMvJQzWtEV8YigW0RBmsFuyDBcB
	RBeQ86XxgH6xiwmr1Q1FcQ+4PLLG89kqjf905QyA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645615584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jyh1mCS0OWNs1sH7rbF2uEjU2GF78NyJKVjG07RzsdQ=;
	b=RJANd6fcKhULv972gHaEZGp1St9Ovaiq1w3NyAipjOXXZlq8RaMZHur+6KIwPKvV
	/8gyvG66mxk89pY2ua0W6XNSE71aqIDaTJ1lc+Jak9GgH9aJTuo07K4H/Wu6KNNZ38v
	z9p3V/Y7iH8lQIUIQMerPgzKpOxIj37eYM/IYApk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f265515e4-1337e0a7-84cd-44eb-b66e-3974c1f1d67b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be4b64a5c9572094a6c351b5d626fa51995ea579004e23070996c3f1bd6b85d5
Date: Wed, 23 Feb 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645615584
