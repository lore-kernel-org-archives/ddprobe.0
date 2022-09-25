Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70C72117
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 806CDC433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664100053;
	bh=0WCWPjEGNAFQ24cbePF3YbvFc+37OQdDciiJ2975R/c=;
	h=To:Subject:From:Date:From;
	b=ctqFYakJr3LYFqA+4B+2vAO1GLXSk1BlhB3WWUmksVClSfe/nx4yQl3vo/7pTXwtT
	 8tZ2yfz5CuPsShaezSPFiLBBq5xissldkcjfKvelw2g5CFQhnVGpL92m7DRv4TAHsk
	 v91SIXbXIcck2BDmexgEordVqzjFeP7zbzK4EJrUDd8+Mlo5ZWmXNq02ro+uPq8mdB
	 i5a/dYWSBLGafCCsCFL2mX7+1t5Fr7saVZx87yR6Xy7zUi0osomOKQYABkCnQpyaKb
	 U8te7jOCSAjxHo42ENvk19pEKCjLA5roNIsyziBd2HDS9B7/DAs1XpmKSb4supo4Re
	 hjANiYiW9jF8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66CDCC6FA82
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166410005340.30011.16918684415981392462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b598c8b2ae4f71ad4f89eef87e0063125be6a3731092840dda3804e518d0e2
Date: Sun, 25 Sep 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664100053
