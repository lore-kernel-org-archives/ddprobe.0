Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8EB2560
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70239C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664704853;
	bh=/uHpJRHyGqtvT4IVv/jludQ81DwpPoCknk9B9oDqWxA=;
	h=To:Subject:From:Date:From;
	b=c2tn4Yni/mC1nDmD42ctjF0hcCL8eMiQ37FIOFTLLO8tPpQ41UwKVN7+8u2C4Xo9W
	 TV82Yv+H6971Su5wPDuCDzI8zNrod2UzycrXxlMWdPL7gUAp9Sb2q5BtiEA2ikBy9Q
	 DcoVyPOe97geSlzlEwbzItkMd06xUdVZO6yjYFnKBaBjWk4LmvgDAvp7pP87zDXtF1
	 2jx2e3lY8jE82HrcDWk2UX6E9tST2o39k2jRtJRUfjHW2NdH+lCyqzG/DrQYeCU3S1
	 ARa745moLlPc9dsLimKH0DM9ef8sJPAwst33f258RrXTnKBTKAQFvnJ5N16ok/jL3Q
	 Mwb2imXqgRw9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B5DC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166470485332.9169.14738633951342598284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1f9a7ef4c727145d70427207e5446136c6f554544045c8c5adb51074c550bb
Date: Sun, 02 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664704853
