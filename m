Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B02AEAF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEA7C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689982928;
	bh=CYn3010pReGTcFDwCuikCyntWH8Vm7i3na6Z1bKntss=;
	h=To:Subject:From:Date:From;
	b=DZD5cyRUYA+1glos/qkg6sm/lmJVhXqbijeeCvfu/OUQWu6extb7xsRyeNms8/LSk
	 SLBzkIc3agj1A07YDMRGSuKhC/qz1zpKsizvwxZ8WWc4zcbu7X/NvReciHl/eDcY5t
	 rn8Svwa1+lz+VPA0Dpnz4+LiROFon8o8/sFikroLxU4GcWSudEDDUTINUoAbsU9u6N
	 NByNLOvJH5fxbLznabpzSnPKYoSsuZC5UhdKin88a4GWylHL1bQJFd9WLXXFjHu5XQ
	 vwA1nKfIHJrKWXNBAHhQoVmfQxq1d6wwClrLNOsH74+6WZYVMkWtoslyyXhAcyp2uP
	 fjUBzXloJKizg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB609EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168998292872.5965.15254088416141322328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fd66c50c3e1018279db3c17b02025d61a738d70057d2780bd8f9fdebcd29697
Date: Fri, 21 Jul 2023 23:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689982928
