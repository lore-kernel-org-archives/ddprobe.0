Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD1415AC
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A1BBC433D7
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664681453;
	bh=BViZx5AqM4bBYPB+Rf1ua3JVAs7wBcA3S2UrV0qxuPc=;
	h=To:Subject:From:Date:From;
	b=F+7LqsjWTm8hnvIIlPYr7363TIb6GgyCWVAVIwBMlLd1gyWBbD2/weMjupOxoCQxQ
	 ZduwZGJumX2+KQI8wtXjI/bG8fsBc7Z9d51WxQlZfaLTtGD9/A7vKH1tJZxunklKAV
	 apTjl4+CJOBSitKYf+269ZrAm8vnC2nskNGYmBcJdxuL/fhSCOUdswcRqbjntrBEgH
	 tx20OWcWm4RjYzTvijVK2CcdPU6gfJZdJTaIR56MBAltswrXKgpIjnz9CVs7ad9FC/
	 enDrzcOcq4KMD5Nxk7AWcjSqsHznzQ/1E5I/UeoR2z3R+VoOri0xHv12Ps3ybfXCGt
	 ZM4TPyr9vQP6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50605C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166468145332.10530.18369180223941877112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c12797be38df0ee2b2633057f15cff1c46569f6ae00533eab64c784441679ac
Date: Sun, 02 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664681453
