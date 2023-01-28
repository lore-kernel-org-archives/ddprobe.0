Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419ED3C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 09:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5580C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 09:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674897185;
	bh=yldsrT6v/7K75d22qUW0pH8zZb/rYAGIHbLk+0gxLNk=;
	h=To:Subject:From:Date:From;
	b=YxRpFCaWTyNbeBvqc6KBLoH/IVPak240puZsITbfgfi0TyYU1zMoDYhlMwYOcdyJZ
	 njA7lCqzS7IHNth6cdS94Ousvuz4qM9gJ0p9n1n8ii5X68hge2lbAfzo62sl3jVIGe
	 P4kdNTqwGtiFu7SVCa2+Hb1tvAaEdIkZWXNz9zIEAg7+wi6pFHAX3dm5B4isTgFe54
	 CVouRwakl4NgosniR7uf6QoqcsoLy7ri6sOHmdydt7s9JPH3HYABX2WwflJwjc31WP
	 Wo1RGRWheucYHE8XATEfgiKXKt/VX0nZUxWY8TAkDwr3ixKllhVAWFkgPizIMRCPxI
	 lYcnNFJvtRpmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7252C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 09:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167489718580.5798.11132082782903663001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1084105de27878f4147c7ecb020d2539126bcd3db605ed17fe9dc8b1b67153
Date: Sat, 28 Jan 2023 09:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674897185
