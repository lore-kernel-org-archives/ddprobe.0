Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C175BE66
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 22:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA71CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 22:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686609905;
	bh=OUYVhtKiQI01zub4JKzBVhTKXpUWJ5D+sLMdib2VYRE=;
	h=To:Subject:From:Date:From;
	b=e1OitBsc5LKjf0IhwIYcKGhexCk0jHIXn0bt/YOkT4mwGK7Fq2utf2r9arofK1eQ1
	 j6LUypYffwcP30a0iaOeBwc7rn/30x6L/3CVFFW9LczMJsdIvk1fwN27FYO+nIPLld
	 1yNWk8dNtsw5o9BfGaA/saAtVMNosfNqmaiw+VgYSGyI22wVeip39b4StvErIcBDrX
	 TVGYuTZGg7WkXv0OuwkNlMZPJUHuSKKrl1trc1K6w7wZ+73oGIHRpYRiU04BNZrBX2
	 ASfVsfGYUUZjiWYkgNVjCAo57GJUBVkxUt8UxY9vp2WB6oq26chc+KoGTJM/r7N2Ww
	 aBqvzKqjdd3jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0266C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 22:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168660990577.31881.5851837936240136747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb800ed314bc45aa9c50f18f9d160eb4186f7bbe26f7173f363eec43cb4b8c95
Date: Mon, 12 Jun 2023 22:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686609905
