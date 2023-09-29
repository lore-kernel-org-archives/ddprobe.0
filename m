Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A36188
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 06:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA14CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 06:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695969368;
	bh=sCthL3nVPJoWYn2ek5pSiknzUHJoLswvlxmDiU45eqM=;
	h=To:Subject:From:Date:From;
	b=uuhsidirZV/UDVADyDeJ4qjsCBlMBPWlQPggQOFBwS8KPUimBnzedH7bdXyXdW86T
	 XuFc1vslHbkGnOkOMsMPvljeOuUsS2kmhHfZMzSI/5kHAjIkujEWsTCW3fO7txJWPf
	 oUh0BTx8jQPb3/uWUFW0Yadf3VZcMd5gIvtRsCOg/5rtsJic1DzaPpdmVYEh05rIlg
	 rA7hBk2PGgKyG/UrASJ/w2KbxAZnhrQOHNOgUwmImNV7DkkQSHr8icDkN7jrG61xZi
	 qWUcPPPWZoruL8TrHI4x/G7yHfWlfcoE2FmMtDarrjIsKJIiEbKkn1zFxMl4QkoYK5
	 yS129FXQkdamg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB187E743EF
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 06:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169596936869.14106.12117702790590925977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c69478dec5eb0440939abe7980a8b0d7b7e2caceea90e2318952d1a7bb85d44
Date: Fri, 29 Sep 2023 06:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695969368
