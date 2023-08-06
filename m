Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8161C26
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 06:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD457C433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 06:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691301788;
	bh=fzspQ8bn7NXF02pIW0jpMFHx+Ow+zve2LbAjz84D8Yk=;
	h=To:Subject:From:Date:From;
	b=BLJGL2yg3vkEirlNaNikDznS1HWb3h4prYHJgwuPTb0t3y1RnQTg7quRmIgECdLhr
	 j4SB937F0OMC9ghIelEPtHBQXK2NgnA3xno+6cH+uv4fr9ubTyqEgUDDiBSUbz5fBu
	 blT5eBYOsUPCaOO9jTTfN08bBKYszpzDvQGDtjnrZ1WHix1lUEWsbWocK/H/ZQ0F+l
	 fHLsYvUHTfdFfA90oHjPMdqjEL/pxN4sdX8pcgyOzELOEUl4hxY5VGQxSL07W66y8I
	 MPMu337z+mYQms0bWPpvogYsvWs8HTuKogq6MEkeB8anKqQepBHQCMIXi+VGqg6tf1
	 /Kyhr0UvCRfUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D0CC0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 06:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169130178869.27491.2029546896577315096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1e0521983a82be1036e099f4286711d861124b9e8b1fecf18182f1db311b93
Date: Sun, 06 Aug 2023 06:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691301788
