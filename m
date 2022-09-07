Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C964C2C80
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75794C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662592253;
	bh=25553fonnPVbDL2LKK5T7UPYWhlSHaW7AEw4OS/q8XY=;
	h=To:Subject:From:Date:From;
	b=PUvmnLSF/fjgMdd6Yibf3QDm2xz73anwV9eD5puIoPH60q1e1Mufl6xdUpKW899UI
	 m4A3WAeK0Co6boL8mFRE4KyRZAxbg/W90l4032X72VvRt9Dt7yXZzXLf2tNpmLz8Eh
	 ZkGI3dOzOhbHsU3Q+0zBHC+KJVq1z5yy8DOY3KL1RKpMv+5r9k7oYK5xKxSw44A9Hh
	 BQZPofVYxxFIoSUaKJOYQ6LDGkY22c7AJNiPplNIwiE90BlNnxiJB4Tp9pvjZzDSM7
	 qaAA7UzAb3UyzMsYPO5WLaZjPZGNV4LCwIs2Iu7HEMFmmQBAe5AfkXrga+JP4L1kZC
	 7GQwCgukigw6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57736C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166259225335.1452.1892847443138169831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ebbdd0dbc99c3369d40d1e77b7fa206fea1899a2769b3d4cf76bb6905200be9
Date: Wed, 07 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662592253
