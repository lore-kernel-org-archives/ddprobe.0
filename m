Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AEB6FBB
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 19:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05820C433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 19:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682107146;
	bh=KOI7FLAjS+pDKzNj7GIP+SC4qrQ2qCB87b28n7z0kqU=;
	h=To:Subject:From:Date:From;
	b=hH6bqWZZqg3IWwxPtcvIlc5fyuSx0ushVEQg2DY7FFay+SQriTvsuR+A9NBkQ93hd
	 YpUbq85UwkkLVXYOX+JR9Gf4v/Fz+W/h+excmYZC1PTgGOAe/++tNUz8sdsoI4NdwT
	 xEWeL2ItmKJaM8BNqM/M5jKfnFEoL3CVD26Orue6QfCAlQY9VC6MJTeNo38vCaEI9i
	 KT1r8I+LPTRbMSJpNt9+4XF7h9Ygt1qk9IrzpSap/xllFSJjDSaV4x3DldnxmiVipt
	 +zQtvXz+4NHmhCPCHTtYOzKNzegxK0RizFgpAe+CQc/q2rfGaccPJJWcxQqkCulE7H
	 kxh+54yjGLOvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE959C77B76
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 19:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168210714583.6251.1435796162790973103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf5892a3708ace4e624e57cbede52af4f5d5c00a1bd6f0915cecf5b2828419a
Date: Fri, 21 Apr 2023 19:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682107145
