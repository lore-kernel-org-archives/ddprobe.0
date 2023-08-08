Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F431B7C3
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 16:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB925C433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 16:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691512988;
	bh=LHDIeQxk/ZDN2YgMbfFKWq97A/nF1+LyoRZcP3s6CL0=;
	h=To:Subject:From:Date:From;
	b=RuAyzm5QTMwTHRLBMGBRtuYoDp3W2o01ZptSmK4Md9BMBXA9SHlBAGkK1d9FLRY1A
	 Tvvt7B61NIpslGjt7K1JUoSdqehdNykFFttLGy99rhyHWaGbYbX/kLyr1khf4oivTO
	 yz5rslXfUuyibBe9OBjiF16wmmxlAKNdbXSXFI+GKMEhakYixjU/3btRkOA/XmCjmC
	 cpFwGm0dZu3nbl3nscCSIN0irvIKYX1T2ps8aTRWNv0tvCwvQ7enBTnzmNCLi6B+pX
	 VbOWCUBHpC/sOvkrZhDtCP2mcnChYfNmLVqduhfEvj8TB2Q7jlmXUgKPl8yv7j5j4t
	 MZrHLQDjeZelg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCECFC001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 16:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169151298876.14591.5421907481548010345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b60eedfb0c86a07e16cbdc8c1dd901ff0b3e721fb58191a30edf4d8f1462c32
Date: Tue, 08 Aug 2023 16:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691512988
