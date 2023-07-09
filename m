Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D59E17E1
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 03:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0626C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 03:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688874428;
	bh=dQXXq8WdIhArQ0PxsRn2K7umjv8i56jOUyuK+HmJeFY=;
	h=To:Subject:From:Date:From;
	b=EUj6Rpn6ChBWv+6xaHTsCNExBbpPbZuhMDH/E9v0ycfmyNZt0XwV8bl6tyIG++ul0
	 az45OGcH9+ucz8F8XMdJDx0l8hgcGZCGpyfAEvPxPJsTvPRuMVE7YTt1ZTfBdrpqVN
	 0kFr/3qNtcBn7cTl6TDN1x0EgEBnNsfu7z3gKIQpKkqmQc+cfaL+ScXGGd9klrOLgw
	 c9oj/vUxeHPvoFmX8pDiBaxMnvZGtIpSVCKVj3QmsARU7ixSaDqJ4T+uPVGtqryeA2
	 zIoX/69zpIOxl+fwqaSNuCX3F2vcjrbwZkOmwpO7R6d+RuIKS8Yun6H7lYXVDeKIo8
	 cA9dlaLfr3kRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5375EB64DD
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 03:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168887442866.13812.3885607231302283058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5d0bc8538e07c3ea97a951c48ff419bf1f7e72a7253d7228ed0bdd27f2b82a
Date: Sun, 09 Jul 2023 03:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688874428
