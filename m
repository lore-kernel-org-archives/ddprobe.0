Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA79B637
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700EAC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663455653;
	bh=j3pDJKHdmOY0DL9DmKSXdo8aMBByJ63aFPPF6Pgku9M=;
	h=To:Subject:From:Date:From;
	b=A423VLUnAssLOFmdMJ/UbE8epjJpY1TosSbqDcJre7NcfharQxIAmgmcvXkXT/Hen
	 mv1Sh6mnQihIUExGk9eNWCHxE79CP5zJK2/I2aBsT0/8cp62yua2zPd7sx64oW5gw6
	 p9QKgCljFaNyRMB38nhMx0GPSj7oNv6fk6JAHoPslIKK8PbN5tC9FBePKcl30FjSXK
	 kyFA8tMudM27sbfov2QJEcOwZvOqMlZLHSidfB7SmYsgXhbj95la9kjaEZABDyaJCN
	 zJ2BqoYws3zgjqKG6oXu/R8QJp0gpQaeJ7XjpqwjSp8tPQ6adYWreC/rgzGJFFfm32
	 MVdnRtfxbcZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5801BECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166345565332.19323.16862683739575319742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd7138daa5b27b48d8ea59de845be8355251fc4c0cb0a9eb6e306101a0df796
Date: Sat, 17 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663455653
