Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E662F38
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70982C433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667133654;
	bh=6+ovI1KaoCKn3hx5pOYgZpD3LxdsOZsUPDQW1wPPXII=;
	h=To:Subject:From:Date:From;
	b=FdmUOAN+03nuqRhW2YonFKZJ9311dB2KPNV83Y7r+xk9CCZ4gb3+XMQuXoVPpR8V8
	 0647hf0pbtnVXpv03+g9Dti+vbWmRQZ0677xD/vqwvODqTHoCPXMErF5XAUGa2mfTb
	 0LdazxstEZfMxXHMUuDrLpnpBMTiLDGZmgXk+sSRHDBAeXjeiwmzRKOvFoQw6GYe82
	 eEnuH7D6hMFNYITxvHeWZhPirqyO+JYjaZzzzICFHvae70edsKiLi+ODDjDvfmpUBU
	 prTXcKfFZE44uGpEZKXwrQLwHJcZjAF8r5ug/JU17PjUAEfPB4QxR1ZAphW6pdcHjx
	 e5StKKJJA/V9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56072ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166713365432.30313.9754915161798924282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5e40e091f2249aaecc8f6ee8eb15524dd7b4295228149ea6042d3081aee047
Date: Sun, 30 Oct 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667133654
