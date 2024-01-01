Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B1817F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJMzgm3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 894C2C433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704092296;
	bh=aDoGNZZF6s8eGS8hXNEq2eC3siYiSJXP8GCDPEODNIU=;
	h=To:Subject:From:Date:From;
	b=hJMzgm3k7nepInIqdcM7isDqhfd/NZgl6Lvcg99BhcCqzsitKosU+58BOD3bXxcXt
	 1zrYZ6jZBXJPPBXAvtqsUE2HRApvFGdsa5XhXIt774tbckIro/ty70TNOJljG9+zF7
	 UlucGD4s8pryXGQncB3QNx3wYKRIuyKBIyIJbogIHmiQ2uRCjcEgn3IUO5ytQ+Bvbl
	 moI29pwgWSx8gtPCBrC0jfP5P21FgOAd0FGLSwTMimZP+Gvly9hkZ7oD28iPRz/+iV
	 uLY/Gn5oC3spwmA0E3DrM058Q2kgnDtm3TA3V+RmNOVakST1PPbx0zyktPXgMmpoWH
	 daw2L+NQU/Z8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FCBC4706F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170409229639.21257.7428136177692587460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1299afd59d60a21ae641da7ea8adae42310d03442e1ed2ee97636cc55934905
Date: Mon, 01 Jan 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704092296
