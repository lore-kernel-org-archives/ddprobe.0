Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6747B8C14
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 09:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EBEC433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 09:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696238168;
	bh=XXjgsGyEOf54N6re1OavGFXBkgRQz7syxE43M0rmjp8=;
	h=To:Subject:From:Date:From;
	b=l0BpJ3BYI9OhNGD6ja+nVP5Ih8jUc1ZsVP8xkqAWDk+G07qfp2NOP142apnMN7i5u
	 MeuhgOEdSGlwlscdFCz2zKIT/UXKj0xYyGM2jFMEAviLRPOYKw45CEgfMIwO1zVhxG
	 Sequ0bL328PLguztGQilX02A7AuIP4nU9lnzKG9ZDUmMX5uzRaLwo+Ob/cnOqjIm9k
	 L9A1T6C06t2ytCnpo423ASWKaKYS+7FW97zIoBLV+qikounQQFIgtl7Ph/Fa9l/P97
	 LH2+wWf31XoiPl8cB5UcceePIsSUDnCb0a5oV9ae5FpyH097C4yy8bnyMT+Hy93TGw
	 qiRclI58njdzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB52AE784B0
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 09:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169623816875.22308.10036102631667821209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7e616c0dbad97965d4922e0259f548b1a1ebdd1ec9a5b550ab2432be757a99
Date: Mon, 02 Oct 2023 09:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696238168
