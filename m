Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940D53C0C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 07:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3923C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 07:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686383346;
	bh=PQ1wKIDosKZqsKnT6Go/VMU8a42j2SfXOrTajP3guAU=;
	h=To:Subject:From:Date:From;
	b=VRuy6ydJe44SU1LJk1BdFcOzhyfUwNlFoCkar6zOnsUKqVFm0+Wykc9E4aP4R/lD2
	 JG6FEh5GOcYjTYPeH7pyRx04Vn17n33tF5TLKtEts/LCPTLFjKudvTL4VD5zsFCBt0
	 uCVqMbGTZB6f988cPsY/Wqj4H9Gjdi9usNEZQBezriHVIFwm3G0vmA5L+7BeNVl0S2
	 93/o5XbNGYES4lgRQYdh9DD88uZfkRrm7IYD086o7GTNZ4kKjeWNvJKhUxUoC24ni1
	 AklUu8rtNqbIhU31vA1YtbxhUE4tJaOlfstbygTlK9URFNbo3jCWGT/7AqC5SGhw8d
	 +7E6ruUvA4b2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0DD0C7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 07:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168638334581.7233.6460373482920082531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813ee95183fe8f998eb4a91724739499a5274564f71d0cfe748aa3eff76546f5
Date: Sat, 10 Jun 2023 07:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686383345
