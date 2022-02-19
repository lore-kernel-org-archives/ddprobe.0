Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583D75580
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645290084;
	h=To:Subject:From:Message-Id:Date;
	bh=6OYDv4knl5lwWDiQKEz0k2eAfYfNrowgmTS0sDd8GdI=;
	b=Q/7c2BGvXVeqX9GaewM3/w/0CK045lGUJmzReuzacTfxx1eqrLEMTv5j08YIxxdM
	iqrbMozFiXmMDhN6/aHODipvwrkbX1rS6SvKtL+6ZS3xmjSTMwQgJEswyTsCqG4VS4b
	UTttkB3Mo0Iz7sHjFrU5L/LeFyv1T/P+GHr5AtxY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645290084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6OYDv4knl5lwWDiQKEz0k2eAfYfNrowgmTS0sDd8GdI=;
	b=DrKNUpd9amRbQE5sHmWc2/08sK0cUh9CbssDIw1YvHvpvzlcJYk8GfHN6e5hg+7Q
	pOXwU5BLF3/TypL1TIgNvsfrCMlCelFcsLDVtE+d4hNibu9mW/f8zCXp3tjOjbefsNw
	bmTBe3Ul4bId1HcNXA5MCtsFJVZx8HdI2pBc6sBw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12ee599c-927df575-7c9a-4928-a348-e877469a1c6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee4728d15409ff4f29b754cb7a411129f31ae10a59f9f6d82eb07ecaa8a0d616
Date: Sat, 19 Feb 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645290084
