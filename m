Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD105364
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:20:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82260C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669605655;
	bh=E6vmMZ8p+fN3cAoLd5k2zEcVMeuLMI2WRz2sNdoZAEI=;
	h=To:Subject:From:Date:From;
	b=F1muE+0mtvh3WL7/FqLiKR7DWYMAx2lpNFHjjlG7Y5LpusOfjs49JymGiZi4j/QvL
	 /6jKKNQ0stHxLKSk9fzgAA0zjSxtq8DNFpL3acXxlK5CtfCgjLqFFkRmF1woEyboiC
	 HM0E6kyVPoUZCS9c0xM1VFbBERLO4bLXkYf/mIv+4sl/ILQkDbEFl3maSL/4hQT0C1
	 vTtb56QGnJmzvTwJkrJirH6Js3bZGEBaVWP3+j41tZUVSJmzbv1yKfbqopF+p2sfsZ
	 raqUDtGNUhIRyCuQHdp7w/I51p+z/NqpxQ1I0oFgSAfoi3iL5WwEA4qEB+noOPaLdD
	 zc0Kau6V3xEnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678FCC43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960565438.10077.1111951681432557380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7fa8700c1be6da25d9fa2aea4c446639964ae019ac2d5c86a51fe3274d507c
Date: Mon, 28 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669605654
