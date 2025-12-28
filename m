Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17768277C96
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766937234; cv=none; b=qquPhauhGRgeTtaGZQ/P3qjjyxCmeaFiOk298uUJ34eJWbMQIwHx5U/+8mZslp8CVeg0UhPTSb3A8j3HwpaPsw0H2zyrsk5B+0gTRiPNF6R1LJSvjpE/h8Fg04Gg9x+t3NfwP/OPshXWvz+9J5NjqHyaunxjWcDZKfCQbCmaUcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766937234; c=relaxed/simple;
	bh=JBp7HBJMfG5bG3yfseBgXTuWVLFZVnwkLAZEKYgGSGc=;
	h=To:Subject:From:Message-Id:Date; b=keJwiFdo2g5vC8eWtC5O7iltKLING8WYZuLoNFsvKAhQ3JoL0FwLJ3cDTwkd/gQBfbL4ondDwRrLhLb6WC11DbnQVclYAi7bAPQc12wT+Ru6jMHNelAEwFloujIihlghdSrI8Yg6JmPRxwigYM7UGdD0oft3GzzPh274uoL6vfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/v7A0zw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/v7A0zw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6064C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766937233;
	bh=JBp7HBJMfG5bG3yfseBgXTuWVLFZVnwkLAZEKYgGSGc=;
	h=To:Subject:From:Date:From;
	b=R/v7A0zwlmMvoepanJ6V+9sLl69HsXSiB1W5lM0E7WuXfQqPK5eQagveR3hgFLz8B
	 gTpsO4L53yPf7Hrm0JaQBntHL3I+IbOQwseg2LO/c6b3N0KKyYzOCWuiMnvWMkHA4G
	 3FvtX5m5aZZ/DIZ/Fn3SpuDptlRxacGVZ0ZWfQ7lEMj85l8tZ+OL3lI1JcUN+qFC3C
	 WQVh0Ijbi2vSDeu7EqQqyex88yM5jEeNsNwI5V5Kaqr4DrG7vi3H4hTwykkZO7hhPe
	 GzAa8mCTpGWMaLwzzlvxjT2A3U/pq/TagWVm0oKC5vZ/7NwhqsS75OFcudYIWp+b7Y
	 GnaR4KFwEdJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D42D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693723359.31525.12010747196928607935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29a20b7486f911bc97605517e1bb88a38bdaa6ac5910ab66ec57130cfff2fd1
Date: Sun, 28 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766937233
