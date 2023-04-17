Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D9910E3
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 02:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05AEC433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 02:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681700225;
	bh=9N5HWVFXhrMwzaItGFXn/Thahh5D30+U2Zw0pr5BMyU=;
	h=To:Subject:From:Date:From;
	b=k5mshj7/9bxjji0QTUQk6PaAcI9BB7aWxw6axS4GtEFuuMGIipT3y1sNIygkDlT0w
	 lRMguZWBmD/I75wwPqhi3B6HdBKOuQcFl3BN91OqjMKHIS+9N5xib00c8vCab6F8vr
	 OJrpirCYvOf6Wze0YkVjETXjspVUqxm06/HXWimRPlyz68ie/HBBIwP5k06VmNxcD2
	 q0X6GUwFixlA/AUMCKUhKbRoDi0mSi17JCxpjCPx4hAB7XJ6G86jzlviId7kNVbAL1
	 Jv9pvrtnttFmy7xAfHvFCD7uIJ187o8eQYggE9azOMBOi7qc0I6VZOtlpvtpb8F8Fy
	 qr0/aQxIICwSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B555DC77B61
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 02:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168170022573.22318.15901612682777506338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e96228324863e2670623c81fd25a8ee52d1f2ea71f404148f0be2f5c011d54
Date: Mon, 17 Apr 2023 02:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681700225
