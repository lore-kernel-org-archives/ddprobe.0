Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F4A1FBF
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soaw7H9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82DC7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700578096;
	bh=7ymUCBWfXZVN63hCAR6tmRMctJLqqVlJ/lQUrFst9YU=;
	h=To:Subject:From:Date:From;
	b=soaw7H9jNYFMg9tqeUT5/n4A7BEEFLqOvEhUeiTekpwTXhBGmRsB3R2BzGREbe5U5
	 rIP0JDW6FwKQPi34sf9NkN12PvJtb9XIX/Wsur2bdnuS/fpFla6hq/RRxP9pA6EKHN
	 7HpY4ANKzOn4JRAao+cvtEISnKeMJh9entMysOpewOaYes0tOp/Mz7ATYdJrlZEQZY
	 Q+o8Gra7gJPhnnCKGjGoCaPA4MQ2RPd7FdheS+3dE7L///jSqVxzJgqHx2mDWYx7on
	 YZorUG3DcFQPZWWNOUG8f6SQjB9Av2z/KF2MOBGX1wNbjpfpbSVmbr+nUH4lKxf0Yy
	 asoxuUbP1Hx9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EF0C61D85
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170057809639.11365.6228689358715568275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11dbdb80095bef577b32896f9537604b392358517655fd3b5e8ad22971efea79
Date: Tue, 21 Nov 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700578096
