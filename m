Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C40C848C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 23:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CB6C433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 23:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689462068;
	bh=90xkXDa9fY8Z75CfhMY1+7/rqr5os46jTex9ZHFy7jk=;
	h=To:Subject:From:Date:From;
	b=c8rit+bzUNOZ7a/IY8ud+FQLWVFTvW/9hoFbB/TNtdnioC/whJXunjD1N77Cm5QsZ
	 Kw9zQ3TBmfr/xUBPKEkgP/NLWJoItxzcL08P+KiUHAvjk5JXe40+t+z8a01I1hYde5
	 p7u+dNJLx+4Iqru5Ve3UmvQTVolPIT/HEu1cMOoinGbJATFRuCi01xlJfy58E+m/Ho
	 dqrAhrTu68h5jlD+E5LMIdq3uOOGLkXs11Ynh36A72bwRXsrff03obknBXh7wlQ/ab
	 G4yPKZW5IiLqU+XvBhFZsQQz1+GiUt5ggSlIshB7Yy1noUofYSjeDQqoHXle1LDrJE
	 R35PlG8EG98qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03B9C001B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 23:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168946206869.29046.10993203271555172975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205dcfdd6daf853c9e358671b90f13d68f207cfc073d666e2df5b2f98125174f
Date: Sat, 15 Jul 2023 23:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689462068
