Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D15DDAC
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwCm2Nbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85A77C433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700395696;
	bh=HXtcjrwCHu4rPhEhbaDtTvnh15qzBF69q3Co6Nc6ls8=;
	h=To:Subject:From:Date:From;
	b=CwCm2NbvfU/a043DG9eypRQ3OVA8VRgIrDffWNI0FdeFO6uFFTBMRFbcxRYr1e87k
	 7KZSSwC7r9GJvmbe4Ws1oYxG8i3No7hQUa0oSeYLg/L37hxqLyKU0aWXmHsgtK6iMi
	 ch5O2QbXw9F8H5ICN7aXtZL0qsWuezuTttTGqOvaRKmyo2s/7vTb6DM5tHvQfPx42E
	 Xfv1OGiDVoIY9+DZ6AHUlOgZdkbFmHq52w+RkG1ShYZ2kzsoTyF0Lo85zNR4NylwcF
	 Z8j8ryzFXsldi/R2TbD2gNX3RQdNAHHGy8jlcftqO+JCRZp6IvC341rLvWyXzo+w0M
	 VhU6zpArKGDMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A402C072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170039569640.22531.11749224157873016080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96a730c5eef07ef51a7068a1c691e3a606ef91c8f9e51d1664b7c21ce2d0572
Date: Sun, 19 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700395696
