Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421F1A953
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CA5C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687642988;
	bh=ULM1s1hWClWP8DiMkayI73uKzWfDn8pLfRBX9pyoPak=;
	h=To:Subject:From:Date:From;
	b=pbOSRics+sR8fm42Go3HY8RGckODRbqLSjfB7NA7RBtJoevm25jjtouUfIXHjimaJ
	 acUqKop6a5G1WqsbBsSRela7rXIufY5TNA9Z3FYpxuWxwqdjun3aCOu+KVLPwdg5cg
	 4Oo1Qx1TnOEhUPBJXcfRu/kuKFfAXbTN7OKaVWJ3NEF59diE5Rk6Q097EX6AN4GJdm
	 9Kgg3xdw8TiPtswYgyAJdOUBDEYPnK8M0KrtlA6NZn8iQFhr9fjPlOowU19KRbNTYH
	 5Y+qtmsZgLm6g1j7LbQpBZozqwvbWKSz/qQJOtcvzQNQLpRVX8GB3GoglwTAb8p/mf
	 bHOUk62Yd47Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA33EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764298869.10807.12220789438659344517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62cb990c92351d6c76414c271d7470a64d6ca904829e3099b8373161bc0ea01
Date: Sat, 24 Jun 2023 21:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687642988
