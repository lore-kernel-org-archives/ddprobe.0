Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580AF6ADC
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 19:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3910C433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 19:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682539026;
	bh=Olj5BvgWR0ti4onF+5oNBcQPX6NWvZcUeIDdaKXucLo=;
	h=To:Subject:From:Date:From;
	b=vLJJPHn0SYRIRGYYDwKZ2BeDIfpnOElOSlH4qUVk27d9MaHWfpvDW6bUoL1rHBHEO
	 oNdwbQweW/8b05qiY5sWZRIkSMSsM8pW9drvf3rXvz91dR60gU8+tLUnvx+UKFTYU0
	 ZDYFCQfypa+2QCcRq/0IxhkqXfmjTElAOWj2XXWywk1/kyJqta89tggdIkqxFgwjW3
	 1HN8uQKl8e2/2OaG2CinFG8DtJxSpR9ziwmObCKs7bYUR9aFWtYGYjeFAY4fiBJAVL
	 IzD6POItIURZhd3n+TEvwZtrhM6GnTocARdfuKQmvJ2FwBrs5gmKjupxHTBiN3UuG2
	 bBaguk5eBGVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D14EFC77B7E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 19:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168253902584.17944.10738414787018638374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fefd740c083509e8cfcb8e331547c714a27083631aaacb3fb30c1ab8d1410cf2
Date: Wed, 26 Apr 2023 19:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682539025
