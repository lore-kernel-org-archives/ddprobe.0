Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9F17D7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDDFC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662184253;
	bh=wKB91Zqz9KzNnd9ykndutcdFdRifcHR/Y0GQ9jrpxaQ=;
	h=To:Subject:From:Date:From;
	b=YUARP0cWdiDvvdHFsKgdKNOTjq3X6lFoXP/CpmGUbBxQ23JPCjT34ZA1rTuElMjWS
	 b4LWO9/2tN7kPzUjU9B1NvdQVf8GTstVdueJDUuBjAZ33nXQT5PNxv7v/a+1g5G6Sn
	 JU+ow+G+Nl5ph41xfBtpoIlNwxORr5y8yxQJgMC+RYfhQA/VXh9p0FUc5k5SEte836
	 qdvPaNSzubzbKwKpWQUPPaGme6SCSSnFhlX0v4x0dW8iEgTjfHpa2P4VBGIamu6Sc2
	 SZOFgg78Cnpu7RAsNl1zKzdkmToUXOljTmW5PVW8zvhkX9PNDKWrXdxqynDkzG6ORO
	 c4BM6/VufYKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52902ECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166218425333.26195.18400539770597153780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db3f22b0a6f311043a4a126ac66d71093dda1f397aa7862354e2f215143d506
Date: Sat, 03 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662184253
