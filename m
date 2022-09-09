Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78EB368
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C42C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662697853;
	bh=5XosyauVEheocbIn77qEay5IzbUYFtoSsGBidEbk/Ts=;
	h=To:Subject:From:Date:From;
	b=Ai6Cbh1scilE+lov19MT9TMCh7THOL+wnaj8wYW+CAPWI8mPd0js5bNw1J6e2KGBd
	 H47zt/SLsXX/W1FNUJmyoFPFK1fp5YWkM6SeYfQDMnFLE0184ao0hGS7eBHiiuxPbX
	 6CcUYUjoXvi04bRhWHPs6DS3uxhwzTQeBoIKaWNexL/qNhaOCCgprPJNkVKP5xErK8
	 ou9W+sS2bJIY24qw+acDrB8E/HL2nzzepcy8xk8qiqCHFc/dHGi4d1ogr33PIZrREJ
	 oUTn/9AMv46eI0OX+Y4ghAJN9uDpIUYcELgg/T+pjAp9qZEHsJuUxWzswEOblqTET8
	 LsTWcJRZdu2sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57746ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166269785333.18004.16980492084943651108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763f33118e9721aded51b1f6ab6894d7c0af158b6cb63616b2b5b350153c8c5b
Date: Fri, 09 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662697853
