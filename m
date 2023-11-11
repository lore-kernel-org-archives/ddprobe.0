Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B6A179BF
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgFVkGsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89D4CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699716496;
	bh=D5zQWv3MdSGK6at1x2gGt/uXeIZeeTVwZYyNhx+JB/A=;
	h=To:Subject:From:Date:From;
	b=HgFVkGsPVnPRCP5RqxBu+ZcFmLBrZtGttGq2UVJdwxe7gfNSCjE1HZZSmzoKU7BbQ
	 lsgz+Mpp4/73fkUA8Mrn6nRGXJNWUVK+EzvFXnl/AmG5rji+L5bS0l1R1AeHZiJ5Ii
	 tWvT7OBL7S4ef6RECnBI9Rdmx6tcbDbRXa8AAzPnTEqCoJw/MOzYzEe5izMplBkRyg
	 fdq6KVxWZ+HCY1Q3hXbDr/yzq3mDM5yXrvzxyWwic9rAPYgidUUi0CJDSzixw+nTAJ
	 2npbRIRXTwErer5ikU7G6rufqniIkw1tHKfMg7U1jDImogp9nF4Rm64pAu9mIbcQvt
	 2oHqNwF2lk+zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BD7AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169971649640.17589.15874104462474862056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed2c1d2d512019979e6f6d2cb7f689f01184f71709d5b615b1f2e3e5b90cd354
Date: Sat, 11 Nov 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699716496
