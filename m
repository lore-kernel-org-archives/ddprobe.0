Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED777C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656088612;
	h=To:Subject:From:Message-Id:Date;
	bh=LYQ3AEV5N91+XxIWIOwar9E7dzAUGfwz603LXh70N+g=;
	b=Ijejf4S6gcCoyGPH9xe5RuoLKN3ydiV/sC17r8PoNjYQaDRf26EIL2Vhlw2DAFR8
	7kTQQ3iPWBabgo4gtzk4gRFXGbzHTYj9FPs6D02yTbCLawivNcXqevZG9BZcAbpMCZO
	2aSCKXm4KQ3pdW5KCYoCBfTKVezrwL8sCc5bfzHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656088612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LYQ3AEV5N91+XxIWIOwar9E7dzAUGfwz603LXh70N+g=;
	b=Y9eRdRWlZ/hZ+sg8xV7fJbYfJVZjoSPs5ZU+ASqVD7jV6JCqQdkBJJ923mks6n4h
	1R+63sDFlzaLFO6FtvnePmKfs/3BjmfQh6z/kDSikXuf7ujuoQRyxX2YOpx412RqmZz
	9DuUyCFnAYd7q1uZMgUKiszgRNTTKd0oOp01Y1aI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819692cdbd-e51e8cdb-2165-49a9-b6ba-348aa5807578-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be4bed61976e72a54bff80324aaaec3fd36a0c95815039163ab348a09c7dbf9d
Date: Fri, 24 Jun 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656088612
