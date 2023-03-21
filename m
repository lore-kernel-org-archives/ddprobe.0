Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C177C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 04:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D128DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 04:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679371685;
	bh=PM0/6GDkbRIfmjU7OUlBfy4e/g+YdsJrukm9j+x+53M=;
	h=To:Subject:From:Date:From;
	b=TE17Efn2nXmLVpSP6zYTs2Xavjhv0VB+wIqTj6R5kSz7uZV7pYJpRQ6DAeSBgjnYi
	 eM+TOVHBCdXeDQuQ6WflRGgfb0E1fI7PhTd1EJQXZ2a/MdV7RYeIiD9Py9d9DcE5r1
	 KfS5Kh+uusVR2WOsmPWzp7bVe6H4KxAPKMo/VoOSfORhnhwju6l8HIuV/4PBU/RVq8
	 ELNE8/58wTb3QJNC4MmZl/Mep2DtBhrDnTS30DVrVuHoiz2ku5rhzty8aeNipGSnwc
	 N+MmwgUy/gzWQOzUdr9cBAFnh60iryqYmVDKuJctd6EZmlrlXEVZ5crlXc8NlQBxau
	 uwMSdbQBdvcLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5375C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 04:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167937168573.15738.14955318188911652567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d761f575b1b78326bf515cf2b77dad25914510e148c9f1b5b639d88f11bcd058
Date: Tue, 21 Mar 2023 04:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679371685
