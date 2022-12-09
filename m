Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7C0802
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C03AC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670565687;
	bh=zHwv8GggBywcStHdXj0Tpe9y0V2CxLZy3llzFQ6WZSU=;
	h=To:Subject:From:Date:From;
	b=p89Csm9gg1NKsx1vSkfcD69AW79ZVZTI1HU3yh3V4yNIa6AZQUMjylN8KFxBM/hmu
	 rH7qHE/U5CcxDZU/CTjJUyPX457cGxliGX/kxrlRIpGAbgv/0yt6HLvNr26EOta48R
	 v4rWjNq2wGM6RlmdziITjXlRnIm92DdlJVuEflYE0Zrcwzg1qDZ3+Mr9NciHUcUg3B
	 0g8x8r/0I52isRH97WlHV0RLtJi6Nrs51UrfOdTQJfhHBTQqVXjR7M8ywUdb/Jcnr/
	 +4MePZqyED+bFoQkQ233f9m+6A1QTr8ehdPAt6Ppf7skGRK4b5wKsRgmZKcBJNpY7f
	 FSIgw2NYW278Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F071C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056568738.13318.9062933983713181354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e552c34edcb3b6620d1dfb3081cd8f9ded76b32b2abd50a037d6b56ef0c3dc
Date: Fri, 09 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670565687
