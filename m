Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CCC7B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657470412;
	h=To:Subject:From:Message-Id:Date;
	bh=ODmvQYlYcRvmsoAeaDmfD5KldxXqPcBgK9v3gGy8Bj0=;
	b=DTqMSqC3NcOulha0SPhDzAoLDy/c/w3uq7oVPVFzN9od/R4my3Q4J2GQdLqWexjp
	mSx6iNnXFWfB0o0cvyPV6ZlQLL6kCYKZ5rgJnUm7hcdknpp6cUVpDSbPH3Vte+cYMI+
	YOwMYVPWitsTuJd5qaVbbgwVJscbNpisO1WihVtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657470412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ODmvQYlYcRvmsoAeaDmfD5KldxXqPcBgK9v3gGy8Bj0=;
	b=I2opO8ri+hVygvpuDfFYOv7GS3Rnuai27qivbQ6p7dq7RYph3AwP++Ee6roMvagh
	QaE9DU111Wb6nnYap588PH5IzB1mz0OuXGQdPJ4d6XUza0zIEV/0w99B9wAbu7jfu8x
	wZuOBwVhUdUiAk1Gp8iqoLWgRZKMmUxEf2ekD5Wc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8ef663d-bd1930ec-168b-49a3-988d-03b386b15a3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a3c3740116e2d2fa273fa26137a34a0722122a45466b4390dca519347c59e41
Date: Sun, 10 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657470412
