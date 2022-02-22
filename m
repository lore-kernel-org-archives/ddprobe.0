Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680327B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645550785;
	h=To:Subject:From:Message-Id:Date;
	bh=1ElqYst+AQzVCZ6fGo8p6nR3gkW8+2sKWmDdxIl9L74=;
	b=iYWeO80EPnb2ZMynjnLnr0SaKnqHkcGHEsZxdpXyvTw2YAJWnNP6tIvmsLshlBnX
	i5xqO7ZlDJdXuWg1oor5yuXqhDOGaik7vvi8vy0u0JPP4w75QUi752An3DOizdwwYJ/
	X6mCXHrA4vyqUhiinDlqIJ1UH7e8NGu+POetasiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645550785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ElqYst+AQzVCZ6fGo8p6nR3gkW8+2sKWmDdxIl9L74=;
	b=F49ZX2u3O7zIS3ZSBe2etJ8n39tauICXk4BbsWojH9BJntiZNriWehpQHqei88v8
	uG0UnJjlOXB/U0ND6rs2RWDybEyFeZaB/TPisJyW0Sis1hgDZ7qEeawTm4u6TRL3qoJ
	mopBBkBWf7OAFtD7osCbJDyBYPbfl1qjxX4DzleM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2278510b-071b55dc-55ff-4d90-9f3f-dd5fb0d9d9e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 441db3b12bedc693bf17f289285119f1a35e35f18e71513d6d209c10024c807e
Date: Tue, 22 Feb 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645550784
