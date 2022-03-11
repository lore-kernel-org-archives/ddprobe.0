Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5210A7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646962284;
	h=To:Subject:From:Message-Id:Date;
	bh=rq40JQ9CTb6+GwYzptVuWPOCnQCgEOXGREONX28V5RY=;
	b=FZlOPk1Yhjr8e/P59yZXdBd9OJzzKsOhL/dYjTw4knabjyliiMkerShCBvMUHPuK
	hBNpA7Gm1p8pPbDnxM2m6u9xmyDYj8rkszk55lLciQm6nG7PkIlRDQex6bqTUwQTqn+
	1giOhCsEl9waCh0jjICzJQm3BtvSHpA1Q8jSA8u8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646962284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rq40JQ9CTb6+GwYzptVuWPOCnQCgEOXGREONX28V5RY=;
	b=FAMbFEg0CAo3ZEFCD4cRPF0t/rJAOKbo+Li8nmBo95Enu0aVVRWLEneqbIhdAh3L
	mp4b3SxNfJe1uBGK2m1qsy6Q4iEJpld14vG5hgATqurTy5cjsP0C7TzrMHjPaPAjhJP
	yeX/wcmHuDceiTMKrTMYqLZn56gcyZtpn7fQyBVA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f769a18c6-e32167ca-947b-4575-8397-e65b6ecd3e68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15c4f22bc7f178b95918e68b953bb5d11ceb75a9d004ae307ef42d0a1105c79c
Date: Fri, 11 Mar 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646962284
