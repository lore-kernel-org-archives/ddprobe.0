Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AB2ED1
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C77EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672296087;
	bh=Atkgb6NrsvVIuBPjqJxVnJSp8Jzkpv0DpCAx446bVLw=;
	h=To:Subject:From:Date:From;
	b=Bd7MSrbySyYUI1/py2Pw8WI2hcI3eD3yZ4h9Xj6miFsFkoSVbefwdJlxPXYUJIwFo
	 KDr59Fh0Y4KRTPm0k9HKCRz6DDSMYIZVI7cCu+V8J44KVuX4DabCr51FAwXN1QP+Yc
	 MqaMPTlKYqaKu2/mSYrCDM9A7/+zWxqYv6e5uEHHS8PFI+Bf/E4LsPoOGwh+CWCWcv
	 JtZyz0mgi/CXGYmLAjGL6ct3HF8Sgk6dmPiJAdwFjay4Yy4PjPL2nYE7QnJTOo+u/L
	 Mo3o1bjwqf9pHnDx5azzQ7c1/uocbyBPOoGVfO2I7V6Y7jJ518PXAAwal8C5w2iVme
	 IyR2AOFYYEs/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC11C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167229608738.3789.13235075448593754519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30519872fb660f682a5702a0cb8085e865a9ba230f0498e458b4a80d229eb2bf
Date: Thu, 29 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672296087
