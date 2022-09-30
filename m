Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B389B23C7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F500C433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664536853;
	bh=g1g7zgV2ELm7BWbDL3jSdHeWzgKYofKBVV3h1JGEbtY=;
	h=To:Subject:From:Date:From;
	b=uOprSn/IHm2T7IwZhbJ7lMPxQmo+OOBmiiLp/TCFZcBptmQ+88gZ3u4met7utpifn
	 qEkfeM76UAjQ/1cmEOyTdY2wd96WC5Pnw3miRKY3JUn0jA+t9fwWGYga8Zr7QMyCdq
	 RfvTlJaFpTFhNa3AnKzIBk5E2umkzQrEZqnQBFbqhALYmQNIpVOHbg8p6VgBC4wR/F
	 nKTsZ6xLp93IhBEJ4zTR+UGnPKf3p/IWDdCuNC/SSN6BM3oZSi+7ehiBbLZnP9XayD
	 YxbxZZUZ0vK/ZU3wZ3Zz4aSBbW6ftFdZFHFWoIXjVPkSp5aWAxjEluNPc1yY729S02
	 wNURh763EEvvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541C2C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166453685333.18331.13259565452674319098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd458ac10d59f47e82491627e7bb0ea22ed30009ac75a1dccbaf75ca9aa059c
Date: Fri, 30 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664536853
