Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE402362
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 753DAC433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663460453;
	bh=UmUJPAg+xNz3zdfedCbyC9rPFBtnsA7v98fvnOpJWhY=;
	h=To:Subject:From:Date:From;
	b=IpGmk+Qq1nD19A+HL2BaLy3L5pbSFi3s+Mpd4xR/DYUh9a+InIx/8tAlBeAId0Jrb
	 wDjBUnbE4qW94UHBOIfCW2espDmL/LUvllnqoh1rBln4/8UkAfboTlSASoApwOmwTj
	 CHaYYvcmpCEyDIcJ7x3a5Gp13R5Ge9vKRkJTT5XBGKVs3dqwtsIjVTCwZuaTmiZoBs
	 c/6FjPXR9tfGGls1C3pQcNTmvokNv8SNXWRCrcRWB4KbYNKqZC/DR+U131OXTN6YsT
	 Ts6534lY1GVtx48HXSDg4gYT298XnSl8P4BvD+9pSHHXpPDgwX3yfyN4YiR+uC/tej
	 drL2qLqExYN4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B1BCECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166346045334.4106.16314791974483090988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ba8ff47d07a79ceb78a8bf92e2a3b3b8d9ef149211c5872e7c761f605e9848
Date: Sun, 18 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663460453
