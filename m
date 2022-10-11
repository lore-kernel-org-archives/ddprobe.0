Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C357915A6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EFEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665463853;
	bh=MW7UWGNNQu5GIHp03r0MaAiuQARsXBQnwdvesZpyKhA=;
	h=To:Subject:From:Date:From;
	b=EbDzZiOuJ9n5JnimiDjZq5ug1x3vV7zUk21/nFzNUPSjkb8k0P7o3slbwKk4psH4t
	 1RilJ0ZrDzmoDLWxzXQVs7s6GCnQGZGv8xkQd0X9Khs4aJxueFYAwtUmL451vQ/tlO
	 SYjI9KvcqJBgqYa96m5s2QBsdrMjKiupNgOBnOt/aMn8/YAPpMGpV0s1+sLqt0NEnN
	 EvFEENYUFaNaQwzGLhyr5HGL7AL/5KFoEKInFPvwDc8RUmKA1JNEwsShvC+byFnD4y
	 k82V9dk8VEnkoCiHOBl1hd57mX4sc78V1vfl7NXV0aqgUKH29mBJfbUlWvVFzlZ3xT
	 N7JXCfL3/aZYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565B2C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546385334.19511.3897993211353523706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c07277cf061e4dac53e1ec50cdd6eb4a4bd9e791579d6c8d440f436493e691
Date: Tue, 11 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665463853
