Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21F5D51D
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FncdnAEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C35CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703339896;
	bh=W7V6bjmVK8xQj/4HsjenCBOT02BoM1jiHrG4xQFi7Jc=;
	h=To:Subject:From:Date:From;
	b=FncdnAEHzjd/ppl//P9BWolcwcR3Pbs+JmfO/y4Tx6omplJQoGnQvL5Nwzrh0o5LN
	 5Kkf8YTH6rDhekR+fvOqMbsoq6+iRc3F4qEovqrg4Axh9Gve/4/Y9n/pPZRqrygDLa
	 VusDKM5YrwPOR8APTfGqD6tFAyMGDElaDJYyVnMrnyO31dR30W3iImWCsivxsq/Sd8
	 3qVcHHCQO975j5XpZ0BxtTVsupXsxJKk2Zu8j0A2ZxrTG+1Rfi9NIFgfvdDYWNg5m8
	 iFdVRRZIRk+hV0mkAQxyQ8KNug1UfXTb0lWsaeKDXCI/u8CluQymNvm97eR21enKFJ
	 3rRPbatHWae3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE34C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170333989637.12919.11413536901517269585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33085509f7a45da239e39c7e67a4485de9c150f367a70a1ce48679f2d7213eda
Date: Sat, 23 Dec 2023 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703339896
