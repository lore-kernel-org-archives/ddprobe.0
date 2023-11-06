Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B91DFBEC
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDBpkv7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81897C433C9
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699303096;
	bh=fuZf/EAMRgvPxemsp5yP3ppPn1aXRUZAg2UzmiPic7o=;
	h=To:Subject:From:Date:From;
	b=dDBpkv7IJxzmrZdIrd5SzK6AOcVviJrm8V89yG3BbBwvDiNwYBRcLSHOyUagAnvvz
	 atVKE73TVHtulkXXO+jwJabzUU4aCn5i3o0hsdTJ1uGOOqTD+m8GBU419Yf3rrErwN
	 4nCp4hWzCxW8i8kp3EwIvfVP/et0Hh4Rs/L2fZZstUdXKJUoKh8GaeMwIdSQfihRUh
	 HfaHGeKOXE+BKE9fwafD9QE5Hwu2nRDyM92hthuhwVfl9YJwfOSruBXg78vlmZSc4B
	 c+mAlCF4uaoIdFQbJ3VFn5bpZ629r8M+XwQLpzzNmTwPmlY1t1Wm+/VYGAhmw39Hxl
	 X+Pvr2pm8bwFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66017C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169930309640.21116.4453491678329525826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccdd9c9691e330daece954dbf1aa9118dd829b6946b4ecc8af2c73a1ebe4b86
Date: Mon, 06 Nov 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699303096
