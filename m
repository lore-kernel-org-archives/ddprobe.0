Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A92748C
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89599C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670952687;
	bh=U5ACl0X/6buqi6Frg9VTu8/k69x9zLOEAhIWb5L8Hj0=;
	h=To:Subject:From:Date:From;
	b=ecodUjFsnjdAViDlHjxAn1qe/ZCucZ9v4JfD7cJdW9WKW5j6Rv2eimnF7xCAZxstJ
	 mdRBBS3ZU5xo92RX8hGCugvH1IKPSSgiSJqxN7SQuNGCishSdh9CPWJvUqa3lKe77d
	 RCjNUGV+EuVjrFnE0PnpMQdBPIcSAg9npJ1zxRx/NCggoSraBYt64412gayawLbYnv
	 PSGnN9A92Ckh+f2AmYZSUc77IybBMrIgb6CeUUqSuSVmx6d0mDZhYiTLec4tlVTmDI
	 rmgfbtX0c2mMYgWaWsqrsRttMaMmBMKKs81Wd14hyMuGfqJrJVaZ7L0xssRSOSujET
	 lkmMRsqbQQmeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD6BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095268743.7980.15609560640917826000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7463c6a7f9cbd6fb6324ed52775fb04fb9d1d0816fa4782479b3d831e45e608
Date: Tue, 13 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670952687
