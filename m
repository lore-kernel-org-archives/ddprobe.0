Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0F4538A
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 17:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D11C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 17:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678643225;
	bh=XHmjd/wGay5jivsXZP5B7YW506ZorG4YbhXRAM7oMY4=;
	h=To:Subject:From:Date:From;
	b=u4Dq22+lwa5FfoOjWOZbm+eux+72v/72hGwd0eji7NaakjJnO7FiJXBLw59kNLjjw
	 VuAqzeTfV6jyjEeJH1pJdpkNPXa3wmGfu09raycqbAejA4nNgCs6K1x+cPdWoNCNZk
	 Vy6r8C3lO2qmTICrOmnlTKk29cF4vp0xdkUvZqe/tQ0EEElLbRcw8lyQETQ4j0fUqR
	 MxkxgjuhezsNchXwHHDBs/PFmWnqE39oVbapDC2DPLe+VTlf913GVpMZTq3C2eQb9U
	 +XBJk73B7PaiomILsX2oeCIT9NJvOSnGdRkNBLGJDClwdcwvuaZVb50yXdac0v8ZCl
	 DF5j9TjW4ooUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB03C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 17:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167864322576.29838.5147599708812779539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186c99d113c260debffa2fef9ec691fcab5bfb8a59f3485a8515b1ec00c42845
Date: Sun, 12 Mar 2023 17:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678643225
