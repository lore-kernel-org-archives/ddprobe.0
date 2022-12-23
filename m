Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74CEA48A
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85BD6C433F0
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671818487;
	bh=Q1jx0YngioFXI5uJNL9N0FR8DKe80E8mB9YqvNUyXeA=;
	h=To:Subject:From:Date:From;
	b=OihdlaZEbcb3wsPQwH+bR2USgDi62TpVbEV0CK9JkJYae3hBs5IHVLkTwNGnyLQ3q
	 w1dmHVt/mVwu0Y1FoKCRNKgipXfRlL2XZj9dkzVtk0ETYV5c+4RRzT1r0pXCk/FMjW
	 GGuyZJXwM3P4OuuymFthjaClxpO1TTSzPFLutaToHOm150/ZCNXxg916AH3T6NAoNo
	 Fg9v6uEkaZsil20BGoNHpy4TvK7i+44uue9rvOneZZUOyfWfrphgF4Y+FK9RapdY8d
	 rzE2eHJXMoUSUFA5/fN2ZfbZx6gZ3rxhpXkroshsNzV/xMPKjwF6MtypBf6dDBwG1x
	 aGxDI+m1ULquA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68804C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181848741.18949.14832669138591543483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084f87b8c41813369c2ca80b36092423c28fa332cb760dbd8bb1f3bf269ed179
Date: Fri, 23 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671818487
