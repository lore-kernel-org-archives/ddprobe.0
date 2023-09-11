Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6812A3D8C
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 09:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5384C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 09:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694425448;
	bh=07lEkmfcxhgVHHFLwQwl5a1ZinCwxb1b+UHWZG5oSZ0=;
	h=To:Subject:From:Date:From;
	b=XO6WoxnxudaNjhrWOPHqpcjcJj9Sc8PUOZUlL1xt7BIDBO9HL7zv8opVX/0S+IQHr
	 7Lycd0gHJz97I41PD55vNOhgmV0TWKS7KQKlemK65t0mGDH+9s3aoIKHA9j0VGDGux
	 gcvdtZS0bP2kEWS/5X3C/G3duqF62aueNU8kVO381Ugqe31Te6FL86oRZPh7d0Vx7X
	 TADYZK5Gjgn9T+1pgF3Exi8MvUY1ktlIMOrgA8Bo95bFVG711EFMDhWUXqyWH47Y3d
	 Oyg6OizI8jwautdA5xQFt+x+MrbijJXJ5WL5PFGl++4Hu3Ah4ASVJ+tjKXshMOTvwL
	 F01vgkNWDJwBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69F3EE7FF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 09:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169442544867.3871.1301332615798882293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5edb38a6b7502a37e49981f9b42957fe9db3f97dfbbdefabea6d9d3eb48ed417
Date: Mon, 11 Sep 2023 09:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694425448
