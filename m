Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38917F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 816E6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670890287;
	bh=wfW0qS0bdycEPunU4qo9LBig+SmbT67OaKgNIBAeSuc=;
	h=To:Subject:From:Date:From;
	b=BNbYD1w77V4rYScUdZI5BD4hACIkjSmaRa8CskAlx5WNLHq7KgV4Aal57liGrEAaB
	 FdupHP8s4ERxrc7rjYToVC/X2cUsGGoiEBge7mXH5EjFJjZwIlbPQVOgdy9PSAVh4B
	 rVEaxzDvqThUzWLsAgl7scthcHD7R1XXV7F4aQ27ZH46dTZslsTLtX6TGuCHWVdJY8
	 S8bzfxp5n8AagyKn8kmQ+EmK0MtxQdPWRI1Esnb1Z1uXxc14JlBdoLAgOvIOc8Q/a+
	 rftGl0voeg3CYEbemof1S05TlYzhjtUaoBEJ8ei/XdgT3hmGxfxroADeOYxQvpFQyr
	 SLxnHoHRZ/C3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D25C00145
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089028741.13060.2619464925979161703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad12e5690cda795b6c16c25fafb4ed03786e9af462de8049cd6d98711b5b583
Date: Tue, 13 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670890287
