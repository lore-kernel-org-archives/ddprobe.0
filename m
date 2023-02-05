Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4328E15B4
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 01:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE1BC433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 01:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675561565;
	bh=/0rNI9dgZDOljhkuvuIup4LEmDR2/YPpvCxdjDmQ2mg=;
	h=To:Subject:From:Date:From;
	b=CKLzOnyk96UUDR20uoVkxGg2PmQrr83TbOTYvkf9EiC+g5kbWHE/hLOpIjWxwPObE
	 SEODKgxhPS0cF0/WkRidpouky7nuiCYUVRji1/MWQi33WgZshwSnMsqStx5l41IFbP
	 kRWEd8ZH7LviZdQWXizt6dm+4Ae0M8mWuFxPJtn7RmiqTlg5+4GL3b0y6vnOMtjiu2
	 LFSk8SkHAfQjyz1jgZzrThQsEi6/FGtSk7kuEeFj8POIEyPrg19V/5Mvo2ZSEZKlCi
	 yLBZfAijjoSmwu4gPnnNQpUfn2wC+uT83h+L4N+hEQ+ydkoqtC/xxsEkkz3Qhrb8jP
	 npyjupMN495eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56CCC61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 01:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167556156574.15906.3402642086202039876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7568fc0f8bbd26eaa933e74ffa5eba10011a2fb63129423330576693caa88da1
Date: Sun, 05 Feb 2023 01:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675561565
