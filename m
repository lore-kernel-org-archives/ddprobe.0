Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C970129AD
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73330C433D7
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666430453;
	bh=+99eTVaN49/bt2WOrsItb8Miz/A8hWH3B+Zephvbt0s=;
	h=To:Subject:From:Date:From;
	b=VrS2DseTB3qywlAd5ZFRS99rbjKwYdWawk2xrBsKsmqqG20rG4/XWO+grGlk+0IId
	 AxWhEuAM9yuOEZC/m/gvOgt6F8Oh8b7ZRscxyHgdb1fq4HwU9J3vYMxXkQUOVDX7wH
	 qVz8PP5j4uMY0dq29GBMoZAb6s3Z20Qq2iFU6ECCeinH6B+QfBbHQ5a334MkZ4buhe
	 0gRw3vH0KPLchfWXpZa9LpJr4INdffd+cz6Uabukb4adp4o7KKLrJR0WfUOZL302Qp
	 8Qxs37mQO7gdBnqDeFfBYdZUFory9FZUrLL9KcYHeJ6YAQV/wNWlZAkHS1KokU4ycx
	 dbrXLS4f3A2EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54241C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166643045333.1625.13585717641421801547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8325f62de286dad1c6586f08431113279f611db6b9075e1b677abce914c99453
Date: Sat, 22 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666430453
