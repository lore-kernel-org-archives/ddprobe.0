Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6291A21
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86527C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672125687;
	bh=ehiGTvN6/AnIB6Ib8Cqkc3S92ogtApqHwtg2YVMF8Ew=;
	h=To:Subject:From:Date:From;
	b=ohuC+0Dw8+S/35ymLBkp6dITy2DDbmYMBS/5erD6aBJPxJ09OnSkfcMcuXPB5Wjoz
	 4KzOWSh6RszljCGOAzLRV2jbXHwJT1f1Kpt78CXjRIogrcdZp/LGxC+mQnxNgwza2H
	 suKjDiAQ30OpUqw7vzBjX3ltirhbwpM5rcdtZCZfzjisAgNGGioGpAr4EJPxPWYhku
	 O6NoBBGbLsLJBsXSjiYmVMHGMpLUokxRV/d8pyjtBrgU6QMyffbjLyY3mrDkyUiv9I
	 n7o6b8bUlIiUF+cggMglW+IsYMgGS6Iy569HpM+RwRoFlx7SBsiuzgnE7Vp4vqlnXP
	 Qp10Wuy0pPP6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669B8C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167212568741.24303.8248890345581915189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8586b77cb0e3e638cdebd3e2c72476ffb886aec4e9cba275de43d6ccf90d8bd7
Date: Tue, 27 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672125687
