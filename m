Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DAA7E4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 06:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E49C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 06:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687673588;
	bh=9iArIycSdferZChkWhW1un/iAMSN4dMeEtcppUrtSIc=;
	h=To:Subject:From:Date:From;
	b=bCF6FR9gIBP35zq6vSBbylu7kS7mMxwkjB4q3Ut59OSiOjWRbpBA8eQmx3idSEhQX
	 TL4FioyxhfyIGsvSeJAd+SNw2jopxqNx9LNUkiO3XPgd3nVkVmRtfzv35CYONcqYRc
	 r12TtAjalmerK6Z5PJHRRq7gcyoIjK2hszoJHPd9DpZanHwmL/D47qt8jspAK3w53E
	 sBprVBW8+H6rsUJWmzind9bf1K35xp1jkJZAKJJ/ES/SFd7IG3R4QiR3qHey8Mjqsi
	 Hjf4YriEgxGuTLKr5KIkwTbcwqaHOkRTTeHfFbvVNzrxzn3bSVcGSQp2oz2hKTpqKd
	 qnx+0gfwJQPqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB9BEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 06:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168767358876.3263.5355662517867281944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82064d2c01beede6e1a7f839c6e4f549d4db87c1e29ef07cfb88ffbf3b4d201
Date: Sun, 25 Jun 2023 06:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687673588
