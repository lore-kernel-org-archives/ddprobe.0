Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF662906
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 18:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D959DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 18:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676400425;
	bh=zCMpCoKT1nAEIKsrvS/Yt6mRPUZ7Yeia0JeH8XelogI=;
	h=To:Subject:From:Date:From;
	b=N7Pdz7qX8MzButIpt2PUOsIHwJLzKeNfcneT5MyKrQBGvvM9DBd1TwcIjaX/R0mBc
	 9K0CgzHSPDDZ7dP/Q5XPDNOBcZOA0HiI0evXYG/McE96oX9d5079UtuYik9R/cw0kN
	 o0rSgNiHkTug1joBkBm01we9fF4c8FVVt0USmvLhD9S0MPhwkh2HaSG00xbwvAfkAR
	 vvCRHwcshgQ8QI/FNTR+PPgm7lHgoPaZGWbp2e7Cg90X1Vp7iIqR4mTyCnXB/vAEnf
	 KUbVGywp5XkOinDS7E7/0MfhaPINEpoSfwcx5WaanFmZ1jsnbwKSLofmspxXXFbXIy
	 fuHOgPibhW8QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEBBC05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 18:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167640042576.27397.15786721004242173221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b0e63c6bdad010e531676206325afe53bf40b53e737cd3d0a02f93d8d79b45
Date: Tue, 14 Feb 2023 18:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676400425
