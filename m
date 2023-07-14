Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D2F13715
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 19:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C89C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 19:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689363068;
	bh=ph6PX/Sj387KXNFrcio738rHa2pPl/Cgm/vWJl9fuI8=;
	h=To:Subject:From:Date:From;
	b=tMfI+d1KaDEHwGziR7gMnHjIsvDk90Ne3ywgRHdSstm7vdNvNXZ6O9njIiSpMO1Lv
	 8/yff7RkxNSZVFxVOWcUBUmx8hEQZSzRAuS/Vcy8WGZmTiW+M39WeZKkQBWRuQHKdI
	 jcfa3hRMB0ms8N/jcOXFWJV654FnMami8vwlQhigtrC3DMUbil+OGVG7IGPOvRE+dq
	 y86QSzbm0p49ZIKVG7iuDKO03NSLlvVeXPmfYXWAvTidZ88f+eVY4c86EjpGGgYMD1
	 m36XWXVM0s+GTM0HorIOR/pkuG8+cumBK8PfQdED2WoeFwEcxZ8jlns8i+PFVleeN4
	 8B7LIttWmsNSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20A7C0015E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 19:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168936306878.7279.6762701375199633871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3833d564272315ea0fdbe962274f88b115ac37ade802a5c1ec047f7526616aa8
Date: Fri, 14 Jul 2023 19:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689363068
