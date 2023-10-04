Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512D013ACA
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 12:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F67C433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 12:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696421768;
	bh=zpVQ2AppQ42/mN+Yh+3asWHiSN8H8C2jfU/41yuNsU4=;
	h=To:Subject:From:Date:From;
	b=CLPkOCHsyGgJB7PTlLk2gJqPMOhTdQYurp6Z/MAXZwXnzOafv9BB1j/VEzzLLIHUd
	 CC6VX3ruF335aXlXcch8R7i72bse2i4e3f8UCd7PmwWPpMHdUbvATZOT6bWuNpx5yn
	 ctiCsU648PtS8f8jI3a1tW1+WNfV8KqGd+kxa6+UnBdQrPd9bzmgBDLAmTXYEBtoif
	 YGTmJy6yOn12j65NtMgs8UT75pjz3idN92uCcqS09tLXQRZ1O0Hv/j8ydLhF/HbOVY
	 F4peJgdtY+8i7TDWLcrMXIZ0WcG0FKyk6vnJEE1aFdRI5M1I/mfsO7w8YCnR+z0MkC
	 Vvv5h6/EIJ5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA31EE7B5F9
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 12:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169642176868.19332.14368104424424608363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6427a169abe8d8d70e546ae0c8c2bc5a8cfbb906be8f96cb25f643797b22e7d5
Date: Wed, 04 Oct 2023 12:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696421768
