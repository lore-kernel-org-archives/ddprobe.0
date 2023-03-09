Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD3E320B
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 20:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7BE4C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 20:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678393385;
	bh=409463fX7cgmIvDpltQGxB3kjRthTlJodlN+h5Fe+Xs=;
	h=To:Subject:From:Date:From;
	b=czkC6TF4cJJl3mMUNOydyN8OobvEDWdJXAlDUW0MoF3d3Osnh/fRKVBzYTAmGuulL
	 CwL1P/V0DyKL4rCVe5IEyY4Fs9jRzg1TzDOcVVAYjjI+YDZaYt1b+HHfofrl8o4YpP
	 kVCBofctH6MXowbmnHgLBi64ktzcC9J28hDZHr5CQa1FoKosbA2yo4IHtzveI8lHzK
	 OPqf+cXTyfxi9hQqBLXXYjYYJLV6DRa8WDG5dOijZ65sjrJ7SddTvEJkO+5o3vlWHO
	 +vWbWeOMp8E7Sodsv6TGmA51o3dgDoayjL3g0Gavl076tspZQk2JNFA3pRE+Cay0p0
	 Er3HYAjesyXpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE3CDC61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 20:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167839338583.32333.10580663643959814895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00880051e10732b1da0a1e1b69b666bf76630d0df5058aa8f3469ef95b297373
Date: Thu, 09 Mar 2023 20:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678393385
