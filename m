Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5BE645
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6D3C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687670588;
	bh=xHatXCIaAK+7fyN0PKoR+Va8N9JejSMft4TadevIswo=;
	h=To:Subject:From:Date:From;
	b=XFUfuPB9Y37fftvkNlPiEsRw1IYTkBDYEa5k1w2w6haZsAvNBf0NjsKm69+GMC6ZP
	 jqiCgkkXcWhnch8aPzKmspQX7Vms5PKntnq8yhunpJqIlhlSXXNlt4l6nBGHTnYIt9
	 cqVk8ZDpXGg7CI/NlwBkbhkfa6jFt8OZz7m5HZVc5H55bSjK/wSwZ4IQR7UchIl4Te
	 XI8W0jg96qkkVDFtmrHL2yqNTMgtcKd1HSGSWHcr6wPu7uYlkj/AVkUbH46KlPvx3u
	 9yloilz/CY4A0X7RrFgJWB0dC79nFTPVRgKQhAOBNYLRt/mXsrstzVtt2RsWgemyMX
	 2fv/Wso6cMiOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99E8EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168767058873.4389.18076588824533176399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d1151f25b0672e69eb959bba5b81b004f1f57dbea74fa1a27acc705699434b
Date: Sun, 25 Jun 2023 05:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687670588
