Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D32749D
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6DFC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668447654;
	bh=9FXpEWiQYQ4jTQ4uqPRBv7gUOdgepf8EEkpPB1IjOAY=;
	h=To:Subject:From:Date:From;
	b=LcTFmLYvvEInCQYazYBoThVwkFYWCyUcA0Z9tfeEg/pBiCIv2cc+2hxncYl+L6F5D
	 5NjuNjTA/6oeGTk2l0X/tW8Yv+5PodvLiuh2NAFcFAVrRk8fGyl3u3y0P4tiqYy2If
	 30dj+x1Ye9zv/Qo7B5UV66mgT26wlqotT+qjuqFpLaZa4ORqjoHA9NoMlVqY5cW5D2
	 voAC90OwQjeDoll+ifdjrPp32RjlTZCLasGz4HsBko2MfnpUUeSYajtuh0FpshqOAj
	 enc4ggR54uGRQrC2iITfCmJ6FuHj4AEjaVXCpgr24JlvOtoDGAKbuUPI36m5v3GHQ8
	 Ol5i4vR8CxfVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547ABC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166844765433.1250.2982556974980855453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d0b49c9c9af954e092274fc3793c3891f2645566926eecfae8d3db40cb61bd
Date: Mon, 14 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668447654
