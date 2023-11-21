Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6D9154BD
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHrbC9Gw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B090C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700537296;
	bh=rBat9SBeQwHjsSwmd+0O+TgLIkDOu0ATAkEPviilc1s=;
	h=To:Subject:From:Date:From;
	b=WHrbC9GwV1+bkQbLypPMj3UWnX4kwERKpI7fzeZxBaFXbXF2VNR/9eeA5uBRKAdSz
	 edocZh4rd9AFAgvVkr3nhv996uA7LrQrtctnoiy7xoOl2Pe8s4EzWGESifXtld+c2H
	 uRBU/+TpbiBkLa+0TfueRXHO7RkLqvXZPJr+zMxcTJfBZM6DlyMXl4xaCjhhf7AT8m
	 okWJxrIipwawydC8pYprxE2Y3wXHTF0GlfCA1qPxO0fN5VzzbVmVKORubDauABiZDT
	 eVWC6RfvX0ugoAbHWRf3pQE5fWVydu7CLCoCE1TGRY0KU3NuboEw+3l1WJgAypNh2q
	 IjFfZdNMm6ndQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C227C5ACB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170053729636.4637.2967872006799834726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c260ccf5d886ee2cd6a852250976b456796ae7ce1a40f3fb3193f486fd07ef
Date: Tue, 21 Nov 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700537296
