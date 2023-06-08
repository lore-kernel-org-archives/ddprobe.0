Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B18EC5
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 02:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23F5C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 02:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686190385;
	bh=0dzFhnWcSVwoWLV44hcQvTH/qadUlcJ3XTuBzFXndFs=;
	h=To:Subject:From:Date:From;
	b=equHFG7Ug/2ZfTHulcGgeERa4BCvMqAQm/assp72Gj3ynPu70YN9Ao3xYmja5zo75
	 +IAAObmYPZbpXdiMSk9i6tipx8yXWx9XZ+xDju4z7v8PC9i2dW/T7ji2MEddz5BByV
	 qloiIjydduuKFLPvtjFXT5+aol0yYGTzSmIWzCpA802w5HCL5PB3zpoQa4qOU2/f8A
	 msoNg6I7OnV5z7nLg1jnqwk4mAUTpAhf3yuStA8ahvbRmpDiiljZtA+hs41TMrwhZw
	 tunUyCh2ByFlzNBXSgKIathWFxP8/Dbd7Idi53DxYxrR2KeOGJJM+QQ+V4z6iwYh8z
	 ZeE0AY4kPoBXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE611C7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 02:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168619038576.22226.9077232833194090893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc48045b140d8e348f680d001385e3f1ef6c96a42034051d6593d5434309997
Date: Thu, 08 Jun 2023 02:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686190385
