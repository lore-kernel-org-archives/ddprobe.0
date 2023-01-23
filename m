Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487817E6
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 03:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD49DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 03:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674442925;
	bh=6GwCZHpyZ8jkiiw/y7HyhMBPz6CPlCVe6m8uairdaUI=;
	h=To:Subject:From:Date:From;
	b=ZzB0COE4aRXxqAP4eRv5cYfIxO7i4o4W3POewb1g3MXKmk4z7UpFES2EKr4+z9rwV
	 OvdXJdagMQY4HjF0yHffM5m0ogaOXezintguJ8ke5bOW1IkpqwYohYAwD6PQSDjJMh
	 W57pHRjWi8Rs/HE9+JsPmIMaE11D8nRTnDXLbC8vqntNs+68gqbuxPmoMLFm6H+SzN
	 tpkZ0fAw/kw3s92AD4Bc/D25guXKSJnku3UiXteiHFxCT2vp4nI+QjdyWQWljrkJts
	 YBp/4doe6pY00pc4Npu/nlc/Yz8dpAVVCW/tZRVY5vsOt/Snt6DU9EINNOafNQfSb5
	 S1y+B7qL3C4og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DC8C25B4E
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 03:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167444292576.6938.10128032785449822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3eafc17b8c80733a83f03e11441b81a0ba989bf34ae55e5ee9eeb5cf27ff28f
Date: Mon, 23 Jan 2023 03:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674442925
