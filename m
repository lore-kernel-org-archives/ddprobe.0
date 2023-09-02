Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870423C24
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 13:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01D1C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 13:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693660448;
	bh=Faal2g+pY6uLjMsJdOvjSMezKftYpfsBYjsS+j3f30s=;
	h=To:Subject:From:Date:From;
	b=K092y5G0I7RxF6j4PfSRlV8B+8CqaqHDjqrSqfQJa/nwa99mcvixuHS35nKhMZf0z
	 02huUty0isEzv1jgNsGG+uBXjZNdNbJG6kPFMo1Ifd5wiQoFWoaldPY1q2XGfuqP0h
	 lMNT5+uCAqSR4sw+CTzq10nvtZZvwbu9iRDM+3A63dgoSeEqCz9iJ1RReYSouID9ny
	 GjEF8QQzK5bmRxMAtBVoLvHpc1fy0cF0FA5F6hsTT0nKwMRwArDN52/yk221xvfojI
	 B/PzvCf1MyFEzuYO6w0XAWCsHnwVeK5HFVLcYqP/nDz/E7XZaDZHcZP3TAyq6B4Cej
	 ti8FJteyIypgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4204C83F2C
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 13:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169366044869.2108.16909453536163085724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cdc1ebbf6f26fc1632c27e80d69432e171372b07612773ee9c8050d2991d5b8
Date: Sat, 02 Sep 2023 13:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693660448
