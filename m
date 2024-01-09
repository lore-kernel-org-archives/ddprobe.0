Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E11B818
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jv/n5fJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A4DAC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704762496;
	bh=O4Dx8i6ojmFNPD8XZcENmUTq/gUZSD4FSk8ge4EnwkM=;
	h=To:Subject:From:Date:From;
	b=Jv/n5fJvYZnhuNpWOaNGlyWmKl+BtXnKaOB27nmk+nFZeG5qt7n0rUrtyrS6QJbZR
	 GyotJeudCf2AOe7dMbIKjyWjS1mUQ5Dkwqmq8heJRvS1EON9DQtst2qIT+IrNOLtvc
	 Jh6hC0gY7NZ15NeCls8p3eogbT3qRf55b92wmQOfVYW5qb9AT/1ph/UVzW2Xt65GYy
	 D2w0V5fSnzSe6Dl1p5mEzzOvbGi2CB62MB/6FV7sKJAA1qw/BZtbS6gZt707dTSHYO
	 Cp9fC9Q6rTGz64WZYYtMEVw7u0OYMqz9cmSm3SwN2KLzs/tPmR8kSdjiDfiOo8rkYz
	 Ip/0hsKqrM4HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7457CC47077
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170476249644.27488.5991685563299794597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980db5995a0effe21a44db7d6f97b985b1179336284443ddb5e3e39511fe8f91
Date: Tue, 09 Jan 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704762496
