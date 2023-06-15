Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753752E0F5
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 19:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB895C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 19:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686858548;
	bh=piR4O+1x8ak9/98CjbzBMe5U1APABEV0a7i8NJxw7QY=;
	h=To:Subject:From:Date:From;
	b=R46SBSfubKzML8j4G6h84haCf/ne/O7t+UtJwZhAlP/zyqodH/GMJ3hl8PnwhP29Z
	 ezESu6ThqUcAqlopvaiJpSybVd9gZoimXtWMmF76EDKS6wVkI4HZPaWxyyA0hZjFpY
	 HvHr5MZO6Xoyx/8OuP7W14/FNN+TZyXoNBmNN4TAgswcR6ioSfAcE+NqDEXS+ocWWd
	 xMs4mO6/NsrtcOtDS6cfs4LGBHVHZOoTutPhPE1RjTev/4kJBnq/PLS7H/Gn9F5Q0D
	 j0P97tk3JyS1Ed2zc2KlYOnf1EJV3f5UWplLnQY2CYMb0XiY/nWF/itzpCRrQVCEte
	 QWrg+XOjHbJTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEFFEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 19:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168685854869.31535.9319996840480784220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9922f22e006248949a4d2ce5afde762ee4a3e81898fe6122b341db8740cd99e4
Date: Thu, 15 Jun 2023 19:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686858548
