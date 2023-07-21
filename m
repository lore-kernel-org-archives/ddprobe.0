Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5F81EA8F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 19:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E7EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 19:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689968528;
	bh=bBJbEVuWCY2TiOW8Now71kZcYA++5hCzOMRjbhUKiSs=;
	h=To:Subject:From:Date:From;
	b=ldzmi1hXl1QsPwkQ68tbzIJeEyRPrhsefBkvA5AsTj1i0FwvD3QdWznka2/nFpMQq
	 H88IOKIKx1TL8j8Nf8NIu9n4uKP3q/0voq6TAtqX/TZWOf9xbuaKwsb2fR2n+ix3/9
	 hjbN6c8d8D21n8UWQpJmjckwG9/ucB5gKbVBGJCCP1BhW3CEZEqbfRIICS+GyvZZ/h
	 uvc/ORnjsJanlMp6m0twzEsvKruFtMZJ1zg25X32Drr2ukCW9rQlcDhJTgxvt3lr19
	 hVnJqULeGANKmZ2DUmHYSagItq8dgv8En+3DYGuhYj6IcYCer/f/nHD+B2D+x9wJ5q
	 /rlGDJ/9zxQKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B561DEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 19:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168996852871.13123.7496435065663497366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0e2610d762c351b72c983c366c7024aa03a07cec8727258439f9850ecddb48
Date: Fri, 21 Jul 2023 19:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689968528
