Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60477A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646070985;
	h=To:Subject:From:Message-Id:Date;
	bh=U+e+Uq98a0yW4y45wT7kP+KhNlaMrYVaid5vW8pMUaE=;
	b=mwa9antYb2hK4gzf7pp+1hMF+52L10sObfvk+HV3LFnlJL/E33ZSCOFvx8jaINbO
	HTc5xY0ozUY/Kcp5HnqteOzM03Aj9SFZYe6JTtXwUYpbU1YEWwfZJJGeUn+zm82CRNd
	NDX/i9g8e9ppM1RTSbVyVZO70pW7WMUDHHYumBhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646070985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U+e+Uq98a0yW4y45wT7kP+KhNlaMrYVaid5vW8pMUaE=;
	b=YWg6NPvKdQD4IPW+ugr9KLpGnurV3e3AE0Yg80gNpCbcxP5oFPxhlEqUypOQNwLX
	BQaQ03GYfZE9LK5u+Lc4M3MtHAxn46ajazdZw9oVLM/UrVmCEqPUsGtjAULo0t9e0nW
	eLFzTRSFlDUrqBadJ7rCEv1WznSrqDhgGZRjzyNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4179f052-e4c47c37-a384-4902-845d-85009b46fed4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e990fbee0aee7aece0dfd9c57e16e7f990ad42926b820a1ca6bc658fa834b5f
Date: Mon, 28 Feb 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646070984
