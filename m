Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5817EEA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 09:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87F3C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 09:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687684988;
	bh=/Yq+nup6MAioSErV7ycpbWrBeNXvG4kbna9JMCe8I6w=;
	h=To:Subject:From:Date:From;
	b=ZNXH2XhUTa5zFjzzRAaqqAVRcR827gcYhb2DfJSsq8ckzZGjmK97Gr1weBASxknW9
	 8jxDzSRU4Yki3ofDhgY4cSwxFKKiWBngBFaj4S2Je03Z5bW/Cj3nzYjIvd8ho2AU+P
	 ZTq0CnOR5ImekffhuwScPFBDxqxDkdDjwyHAU9tRkQVUtAzcta2TGtLdtrPTtYqaz+
	 HeM9qWQ3IABV00ELNgwt5tZFFtXU/wTKxkH84XVp4s3viphdUWqx3Z36nvf8dbhQsE
	 9qTh8c4gv+d7ZbUkU9oRJtwX+kFlQxkqLqUd9a0ntApFxnJu9+2mBySYaSXJAS4+5U
	 2CwNPhTFjJeFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A866DEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 09:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168768498868.7019.13493582798440669232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4796470004a28ca36fcb6b6c351a1a84398d2f243c4c424b1cf7e76918dd0e
Date: Sun, 25 Jun 2023 09:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687684988
