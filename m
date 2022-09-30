Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43981841
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB1DC433B5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664506253;
	bh=arvm3gWW7VOLfXXtbBg+FvsGml2jACX/M7+tZ7erdZ4=;
	h=To:Subject:From:Date:From;
	b=sfCHr7p1M9QMHwVaqdB6+yTLDzh4g+ilZALkDrnRkNfyffXlIf8xnCYxPhjkE4PY5
	 /LBsZu4C82LixqUU4xpYAkRvXecUPFTkBLUCDiuwnOXBgy4QYukuiWRXCtOxwtsy5E
	 GpF67wwrO8uWbWp576vWxatEEN6LRTamQVBTK6Xx4KCc+JZVFd3OT4fmAQ3HlcHCXV
	 PcLjWdHK8t4/VuXSwXWKb/gqY3HVMJGqhZklklOGz6n4ErqQyTLbRKMZc6b94zHb0D
	 ZvGhDgLWKGuXMZaCYB25WoL3FfX1E8gKFYbZWIs3DfV4HBIv+W11+Sqdik/79VU1Mn
	 /00uAbbSkLyVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520A8C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450625332.21590.12338831958195086772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea2b69b4ebd1475a81fe1de60855dfd77232cf8935a871c41e789b928c489cb
Date: Fri, 30 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664506253
