Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10C97F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701DEC433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662901853;
	bh=3qMKA6oNHekaTgFF3mWso4QQxh4t3IN7lR0MQsS8VKo=;
	h=To:Subject:From:Date:From;
	b=Qq9apNqlVYyQLutH3PXDa0olzKL2bc/UgoKY6dpWVIOAsepPc3CgMklwAxVV6LZtf
	 EC7mx0H1CemPTCOgWVDwYodc6+1Z+aEqvymUa/yzzCjzoiUShQgQuCBsF02mRfG58f
	 AL12ll9LGUycPMRTOj0AjXn3tIPwy6qqpE2GnTYfYcrvK4KxQFii/yQcbhONWWVsVQ
	 UTGdELV5hu0F96HBzvh0L1RoqIl5PUnu2nzaSmv6GvuEwMK7RF4/m5UkwGOZdObH+7
	 6HXXNwhCA5JFixaUSGaaYBnUEc/1qbzC3g1Q8mfHda/Tg13iLTn/vmreq33wV4HKC2
	 zpM43SzI5yMLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554DDECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166290185331.29545.1386824444297098215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cc9c3cc90144bdea5b8b7dfc676e472ae2decafe6d638c297d9451dc8af328
Date: Sun, 11 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662901853
