Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D3F5668
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 15:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4790C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 15:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687618988;
	bh=9LDCBy77tneUmaseJKRTLZJabwxdbAxKUWNw0oqKFO4=;
	h=To:Subject:From:Date:From;
	b=ewB/2g/Jcn4+U/UT+h1Yj6Fa0WqVpu9QsHNYeJvLNTwuFdlhOmdpKZlG+G6bk9s/Q
	 bTyHvNaHkFdoS3HlBiC3TOb3kFEK0QsSO7HOnGeq8qkfIMsgTD0Neuy6Qhe4NcSeNf
	 ZswkofBwNMVd5SnZiJTkq08vlA7z7tH0H2f+d8vRECxZUxwkwX1UXHfOrISZ4wtC6R
	 Xeg+HRruOBOpjRB1n//kPc+f4t2fhBucbGnhA36ymYN7mKE86s5TH3nvR9lxlIXWzE
	 djeTOHaFFxzXJ+r8XLzLBGRPSmFaS1ZL19XpdNA7+S2M3hwS0NLi16+nsVGiUmXuPK
	 iv2Nqtue89Juw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D53EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 15:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168761898867.406.7675423602835646999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fc3fbdc9c0caef5919057381cc213ee97ae20bd6099db6e8e65d181368594b
Date: Sat, 24 Jun 2023 15:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687618988
