Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551442F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647106284;
	h=To:Subject:From:Message-Id:Date;
	bh=5Ea2blwta4EiBpPzgSwzzqBBJvNMuEAAmeR1eAigJ60=;
	b=cjmCAaFEE7QmHuq4Ya0ER3DGMB8UPesUzoJmO8fz5GP6b3IbiBfVgTWBthSA7hsu
	qekD1p3IKxFuDVK4Pv3qq5OiynMpX090hrFfQhGPWhs25UcBnSoUEU/1k7e+kU9c3XZ
	2r1gtKc53CMfsm6vlWlB5wpLaYVTTv/7X4I12aas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647106284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Ea2blwta4EiBpPzgSwzzqBBJvNMuEAAmeR1eAigJ60=;
	b=FS/K7pyDg7MMSKk4N5mi+vpnRwMW4OhQ7n83AUpdGa/QUvXq5nLjeXtIA6C6BUcb
	5xgg5C7+PlaJWxyYMxwJK4TFNBhve5KXdrRbsslQ+epribauSGVH/Yxo6m5qLvpz911
	y9Jh8+g1n8WQWlVHFcvmIyO8PsD9Lu5Aah4E7Tkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f2f5ccc-67cdbc20-4fbc-47d6-bc2b-c6279bf3613f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d1dea01ba565e249482d2399d88bd02430bfb651bae21e2143dd291c4140e27
Date: Sat, 12 Mar 2022 17:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647106284
