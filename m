Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B1928F0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 861C0C433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661625052;
	bh=cWK9+kbBDF3ycngbjkM7ivCAt9kGqvWDkl9RGul/bA4=;
	h=To:Subject:From:Date:From;
	b=qk7Uw8W7JxGwAFDObQeTyxa0vNcClh7eTotCdjJ3S/fDYVcKNgyR8gbCqUh/mcjlO
	 S3D4sLes/f6ehSh9wcSaJmUuoCS8djEeQlUoVGPmd4Ojwtpbvh6tA5ef40yT5jhJ9v
	 47QiX+M1f/3HGxidhQoU1Pjd3sM8ZVE//K+tsLWM3cB+BTsBeeZr9F7Cmc6oa4UFcu
	 kXArkq83Gdi4IiOzyldI4I/+SugzjPXIl1DjA27uQDkjti4XLhzIa0V/SM+0XdOLTJ
	 viB+21auPA9b2I3oVQR8ogazglhRYiCYNGLY6S+af+sPsjoKUdlCez2vzOXGTHblBJ
	 RCZVtqRKAg5ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B4F6ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162505243.27918.5013465578124669389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2e4b21a9c4efaae62c68f5d992d88f715b2054ee4540389d51a2fea1c07c72
Date: Sat, 27 Aug 2022 18:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661625052
