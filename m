Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091FA3D79
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 15:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648395898;
	h=To:Subject:From:Message-Id:Date;
	bh=Rbl/xg4mT5sQSVMDN8OrZ5vu/OKI6xYuIfOcH6ZhLjA=;
	b=LK8ngdVKGWEr1ZbrFLg3l+dddvdGxkpxo1d/4a3IYIeH8DHe7h1DilYjY6lM4039
	NeX8r3wHqGJzgZbq/i8V/w9zg1h9LldgjqsdFMAWLcW8vIqtEYE4BBeCDVP4ZkCQAmO
	LlxQR9Fu2nlWp31EyfQPaZ5vLlEs1JqCvh+0RgqY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648395898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rbl/xg4mT5sQSVMDN8OrZ5vu/OKI6xYuIfOcH6ZhLjA=;
	b=FfH3Jjo9/3gUD/QkBmSzXyHHpxXvIcraHHpU/vDOjIWAiZd1uI8F7bcMy0ws64SI
	vY3Wy1XijNZhl/9SpBjNbxzym8csiKu0tx6WAgPKGXLPE431ZNHhx1zX3uKgU2zZ93y
	cZLGk1Q7ng29YpNTP1Vj/tm6OXcQo82iguAUc9ak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcc0d4df0-f65d93f0-0051-469e-8a28-242e631628c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8995fced62b476328d454f40dcbb381464912b806d017e7dde4ccff69891d36
Date: Sun, 27 Mar 2022 15:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648395898
