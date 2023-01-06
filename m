Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B817E8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E088C433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673030487;
	bh=CvNO9lTBdFDfR/HZQZxc4XPZApnraZhztJzSi+3qyro=;
	h=To:Subject:From:Date:From;
	b=NZuxEi/u4Qmcb1ZzfVgyWpwCzBNo3/m9LBR5ftHiRs8cQ2XLz+/e98Upb2uvxJbsM
	 S2XwqPVWv6wXcy0sSvxc2rsWBBXSwYtmZoBs680GsY2gUSri5F8//4Ymygna2r9ooq
	 F3a8nm+iW+GCrnSJWQj3+Tkcy1z3I9zLtTDSSnlLtSGlo8l7I6FeapTakQXvhTpiN1
	 E+vcEWPGuVdqn2KagWFF+iwbVWhwENln0k/OF4jN27vG5/L09+TdHvxYMR1XhLYlq9
	 aoI7k+jg8J/sYveRi4H+Ou6hhSFuDFcthHn6o/hdnMTlo1WuaU6r/5gVoFz5GohqJL
	 qKiw+IOpsOTow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EA6C54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303048740.21180.997561980485367591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fdfafd3d5212c0ecfe63a472a78160cb3dbbf51d0e2e7ed9b04e23131e75cb
Date: Fri, 06 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673030487
