Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC9220EB
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 18:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9364C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 18:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685817485;
	bh=Hg3IDY5vshs9pBhiWAFFM/TN0vGZhQZbyICM7CF6kDM=;
	h=To:Subject:From:Date:From;
	b=Ss1pwehbp/96YaMHzqM6D3oHOznoJknKpRU8U7rkFjzNfK7FG+ulZPZ095WjPrGWG
	 90okKMveqpoKDsdg4lolFBW56rPNwhjuY5nuIpCHSFrcual7HpXa7I1wGc4p/w11y/
	 kyvIg6h0CLWyrcgEMplxhBT8NoSEeae561ov//R8mtBu/+E/BMiIjhZMVu8+7MRmj7
	 cEnrfWm3lJcLs4RSjY7as35++rNErQnQyOlDtXNnQlWhX2zjnBWbUwZ5LRMs2drOCl
	 O6LzIEr0kVFI21QKk77rAA9ELkJsb7JoNtIzplZYktfzM5ZIXv2tjvjZXxHAFq9Qly
	 ytI3LItMEwl3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C01C7EE24
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 18:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168581748577.19387.12316565208160535675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38517865456b61d9b74f629b601f46b58c5d6b81fb99a62842d1d23c18602db7
Date: Sat, 03 Jun 2023 18:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685817485
