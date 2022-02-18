Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6329E4AA1
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 15:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645199785;
	h=To:Subject:From:Message-Id:Date;
	bh=Rdh+FCpLrlVuGG81OP0NJJXdyAuETv9XKh05GjnjfmA=;
	b=M7wlhN0uWhQ93ICu/t/PMxqamLefPTbSqsyWWJIONPvSggzkzxCFXdp8SsH3+pIS
	ASZHUtuEnClRFhZYC1/ruQt+J68qzhi8id3bU9rP5OEyDkiCOmgx6l+V4U9sraycVxw
	2/T4EmNNx0XwFWTK+gvIajz12AluCwFiAb9FFRao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645199785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rdh+FCpLrlVuGG81OP0NJJXdyAuETv9XKh05GjnjfmA=;
	b=KgOg0Z9yu+amE/IGCuFwKTzkN4kD/Epsf8y7BxGJe5tanDny2VKmNsWVZWjRF+1M
	RY6eEEouSJ2l+soMIh/xP63YwWHegm5mMIpFM30VNHzYWDZL6Efnz3Ql5hZF0Bqr9PJ
	Dw3yt86bDWVx1m5IKdZL2ZY9Xaer9GmzbkZhEzSo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d8c7bcc-3683d2d8-7f29-4717-89bf-32d426b0bf72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecf3186ea3a2c97f272a475fe256068b7950c66f028c0c9c036d6f1b6237313e
Date: Fri, 18 Feb 2022 15:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645199784
