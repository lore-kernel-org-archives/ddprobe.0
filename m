Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B900A7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67C72C433D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663146653;
	bh=59i4MqOY/q4HRSQ3zH4OmB9xEny9mp4cvow2YxS36G4=;
	h=To:Subject:From:Date:From;
	b=Wk3NtWlNb8bK+v0xJYywsLaMw2UZTh9XN9DqD2F6A2BYCR8DU/vMN4ZHSa182a6aP
	 WQdaVXb/eF8K5osdjWtbRHVcmwTWJNPQvsP1mXOhuilTPz8/dVYMu9DQKG3du1CiKo
	 lByun8hT/3rXNGEwaw4LxpH0a5YBGiJV2ldxDbbiFDM30W+WJ8dz1hKy5RoRiCngt9
	 5NfsxHumwPcKFiCIfr/F1pJKFjJZf8QiJS05YqrKYjuQFFizAtamuqP2ycD6phK89h
	 lkSSUXL7wFm6ejZmyx4ANhiyzseLOBKBzWDfdnaNs+W948h8xGLK7PpKZ5YvIO8Xhs
	 sG07NcOLQwr4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52315ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166314665332.26760.2073641369330127896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1ade43b9bf2d9fbc1f2da0b9e23b43d56c212a7590ccac2051380a5a6f837b
Date: Wed, 14 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663146653
