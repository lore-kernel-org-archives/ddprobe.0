Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EAD33C4
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 11:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28A3C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 11:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681902245;
	bh=GE5rUcR/E8XKwSqB/N3V06Zel/dVfS5JT9Humkjh3m0=;
	h=To:Subject:From:Date:From;
	b=gvaJ9ywdSe+kSrp4PYWT9TKmUTGBH6mDbj44k8WHGHsfpPpbFUjp6wz3Ub3IR6lWs
	 t2V+OyD15DYhR+1LPAMQoqjaGNQxY4nMOgV9NRS5wYwroTyOZYJ3Z44nOw8oKae2ma
	 Q8TqVwlf6uuw2V814nRfuS4bHnJyga3nzL4I/yCJpc+lhyKiUVNX7kKAiJwhteUlfD
	 /DMJLeejBwa+e/FALDQmxm8saXa9NHlqn5oLgQ37PqZfWAkzA/YXp8B7K/HOfmnXeN
	 0VLUBFaO9qG4sX+H4iaNK0qCdbbleGgE58CVtyQd6p1mrM8hQ3D7Bz7gbaGohyXxYb
	 U2ENbH+vHPT6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A59C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 11:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168190224579.26359.3448635013483343896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a970fd98a7bef3e1daa8fb44e0384341c1dd2c9bb92ccb310278fc58adff917f
Date: Wed, 19 Apr 2023 11:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681902245
