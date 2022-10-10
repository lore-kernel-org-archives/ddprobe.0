Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78407E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71440C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665367853;
	bh=rRJnvBmvqXUoaoMJRGCoXGrNr1ionS6yC0n3AZ6ldkw=;
	h=To:Subject:From:Date:From;
	b=A4T3bxD5HQ5H/WxAzaLe18ffzsVjgosKAGz3/qDXA+oPnokXRi6KrgNaevGFLDUtD
	 yxBnIfN0mDeJ+RKRgspMdC/NOMMBKCWDN6+NbaNDbyq6FppmrdF4RxET+WTjEHAsHF
	 NhK5Jv5OydZpS1ktrVeXJc1lLfRmhtt0h5xH2vWT64fEAt1wsr2aTory7lLhflidzB
	 0ItWEcciIYUuEesULT2nVusSJ/8Um2XlhZTJy72cHJn2vZ8y4XdNs/Y+Uv/vmiOKzh
	 c3kmzVP1TQYU25aRZ/bFRz4mcG9Bw/AWvN3v2r9/BjEnLgUCg1LtCDjLWEWpkOVnF7
	 I/9+j9IJpDAlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C4AC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166536785332.23501.17455849463109223274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ca753bdaac9f6b303cf3937ea3a86e4bf81895273c81f863ad1b49d8ed4280
Date: Mon, 10 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665367853
