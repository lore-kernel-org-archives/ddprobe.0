Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DC13C28
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EAFC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670170254;
	bh=5c2WP71PyK55y/2/+25/KnlwyHefrquujakf3blZRnE=;
	h=To:Subject:From:Date:From;
	b=S5CTts8O0ueJ71hO1ITLsPSBnjubwU+XE1/4gnCSibHFyTCBYZrO/LQo7TPCbdG1g
	 uO0zkLbHXmfsVfup5JDltK16SDtYXl6WQyC1CqXOhOySgU4vuZcpEYlaL3gTIl0Cz8
	 HE+LBFkBPi1QAWqAwdvKzc59k4/FQn8smS97r/d9/lsqbcx7pIA0U5gW5G70t8Pge9
	 a2aX3pw9rc5ndBJVtBLWnZQyjJmaA8uC4q4Przv6UralJeM42gWqfIpaavFzxN7tnH
	 oX/UcJBhcKDCjlZyVxbRwLvx1upG5MLk6b7Fs8yGrgUocSkzr62gz0O86TsJ8upJWi
	 Wh4cSA++mXu1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543EAC4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167017025433.11138.18377407931848766963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b4b3c7aabd7bfc1d073b7c0b8f1cb3f4bb3fbe237d22906e9387fc069cb203
Date: Sun, 04 Dec 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670170254
