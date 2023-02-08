Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B2E748A
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 20:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12363C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 20:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675887066;
	bh=ZKyWKDE4Bw2vVLJfW+ltr6wA61Pa4PAyNf2N24Hnwkg=;
	h=To:Subject:From:Date:From;
	b=JuIKAZZ63gCARa0YLbA6s3E2FLZMsxOnNJ3DCPFPbGTAFcP/XWHbwJsoefcCEsUhK
	 z1oHQGqXJMwGU2XPXzeQzTZKTbeohlrIV5LW9rvG+nqDb0glenInlvTZgSZiSNA93C
	 lDrHsWuCKKjL1fW4DuIS2tEMK/F6zVcvkIKkmDkEelsXh6Z3rXtvURaOvldx5d8xWx
	 kzR9BKo6pkA1vjyb0zpXpwuDrx8cTGZQq2rkjVrbUnacVJEI2YeTWPjrbiZ9Y8GPvc
	 g7T2sw7Mi7WTNT1m6iMgVDoVLvNv/nbeyuKRVux+4HsFhzaK5rOm1fmK3pOV4M590b
	 IVT4cp9krlKDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAEE7C05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 20:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167588706582.14227.724745775054410640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ee636b17e1dd96513a136bcd06cd9eeac61c6af1d2d7ff9b0e543d6ac04962
Date: Wed, 08 Feb 2023 20:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675887065
