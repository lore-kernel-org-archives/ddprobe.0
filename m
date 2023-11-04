Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2372622
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kD6zq2HT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FABAC433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699082296;
	bh=qhUHht9UkjbRRET9d6iovqrZ8F4FjIr4QrWrmH8SBDc=;
	h=To:Subject:From:Date:From;
	b=kD6zq2HT1W+J+oFF9+O4FiJLnd1ElgcCktMfZTo01xsEbPzSFpd9ARcLPWWGeeDce
	 zaALn9/htZdeW0t0EtKYOaOKIrUTgxBxJA3PJIP/7P3VqcKtMN1FTTMao1oRl/E5qa
	 5W2DxxHnc+wOxWKNsShqs+2RDM7SdedJVF9cN/uWooNimDS6xJqp9darOn0wVgSu9n
	 gfKVyy8Yt4E8lhuhQdhawW//IeCtWpIE6keKaVzurmdehEsF1pLmg4ixhXjkjKEiZ9
	 KlrBDpDQeXxU03GSbUOi3E4a3jAkT8xKUTWaUVVeEw4HKx/yHEdYzXYlunW1Q4VBf2
	 JZYZwN6MqizXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E3BC4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169908229639.25934.216255940373569931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acea1dee3e3f4d9c11b0de295f57ca43d1a067fdca98c99dc35e8a10c5a0f164
Date: Sat, 04 Nov 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699082296
