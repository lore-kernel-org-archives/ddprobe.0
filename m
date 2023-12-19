Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335581BDFC
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWcKMA2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737CFC433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702990096;
	bh=DuykyYLcinHmXlZALG2P75Nmqxns2o+lB0r3LUsGfTk=;
	h=To:Subject:From:Date:From;
	b=hWcKMA2uDK/O3X1jwtiVkiL7PxmcM7MPdbSuYtCPJtn6+QgUZfSx7J0zkp2TVhW1+
	 mfOvK+hgTwcoxvdl1Y7GpAiMbOkq31pxHQQIOHMxjGNJ1W/+sDzT/yJXoNZcCRNpXy
	 PoHJWwAlCXbgWPOL+c0Lso0os2FfwBgWOpUz82EfP5bXhSg8KV9sJN6g8NSkDsGPu1
	 MDZUC+ZyW2/7xvziwCiwKeK1rxwD99yncGpKXxVQi4DAWyVhwDp2u/mGczlJJJkX68
	 Bmfu3dkkfG4leM6A9VFLM43dOkO2i9WX4DATeEwe/FuAvw/xxecyWpU+y313nvtU/t
	 zfdjM2N/QW/gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C643C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170299009637.19848.15438903063348699400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a176da2eddc997186de645160f3b0400783c87aa8a6c5b894cf6c824cb4b23be
Date: Tue, 19 Dec 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702990096
