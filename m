Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04782560
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F26C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669366254;
	bh=H5jWkZknkPsxllCBtowI3TcMv84whhYERIhN8kaWWZ8=;
	h=To:Subject:From:Date:From;
	b=c6vc3F5cNKA0csEHks/dSRXBfW5L6VBi64rgVA9igRnxgD33to6WrDohgLdpSWc5S
	 kw60hV3EDA2cEufCJ1VaOqUkSUBRDEEo/mHuPufK3qALz1eHo5+k9nAFaFK3awBowM
	 jeq38lnx/IE/nI5wB9ubeKMKnLuBrvxmB7BPUnGewECP7QEBNhYoRMTv1wmN7ReV6H
	 GTjZbkuJRv1dq1kFx1dUNXgKO+k8aSPp49j6Ct9X6Y32tMh0cLra+Tqv2hYi7rTUPG
	 YRTPA1J687vhFKnMU8IosO8QQza0cCBQ2YM9FFY5aOPz42HvmbOt6S5nINy34ACIeg
	 nEYhTGkJbJWug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F68C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166936625434.20867.16707289819015435986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e21a0bb83532122ee5ee977841b25e0f92e73ae4ecb1890c6cf0b7dd9fc4d88
Date: Fri, 25 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669366254
