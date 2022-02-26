Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1137B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645905685;
	h=To:Subject:From:Message-Id:Date;
	bh=REY6wV0isr3C9PgyfB4fvPvRzNWM90j0xRren9MLzHk=;
	b=Iy88fiJpFKTjVXN1Uik1uXvzmUCQBtanVPrp4rxhnztvQ4TXU7lmfO9oe1fTsvw4
	8s76L5uNB+UxcFB6UU6cWmp6iBfJvecZIWmJ+3o6RMVMZOMJ7AoluGgBo18CSqG/g3T
	eNLwe1poknhOirmwH4A959SGbEw8tXT2RLZqkGQM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645905685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=REY6wV0isr3C9PgyfB4fvPvRzNWM90j0xRren9MLzHk=;
	b=jHIV1yTbD5A6uqOT5071UnEXBvPpkXTaR+AmzjDzFLobUxJtkoFU7EO2MrHOcg7r
	Kq48UWEP8GdbIV/KjjLwmCxIq6DQDMsxXcGIH9D2Et7/Oi16wg+yC+nzGZBrgEaAZFh
	IcQpDWyFQIYQJRxKW2dzQqmoV4P+PRVSWaRDfRj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f379fa910-1f986aef-aaca-46db-bf78-8c4438b3f7c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b28bfc5d0f4a8aa11ace417452e04634561f3494fcf8c9194d9ceed5ec1e875
Date: Sat, 26 Feb 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645905684
