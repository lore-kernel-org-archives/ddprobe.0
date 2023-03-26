Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362B16ABD
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 23:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4C5C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 23:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679874125;
	bh=ERDJbvJkSmwt9oY4LWMJ4C+nL7NE42OTzwkUOapFmGY=;
	h=To:Subject:From:Date:From;
	b=C3/q0KWYxRgEv9mErKo+NJ6e/Ojuqr8zF0IKqqMEthp8H/yo49q7O5rxMJwmSBwCV
	 Vt4us1BGSQ/Sew6fqLQilcrf+ngTg3wsV6o5d6DWgT49WT8m9hKX7jgpf1vz50HZL5
	 c9uXZHRvgSP/hkGDt3/FDEnYpqdxcM2zcj7Vk+4dpHs9jXS7Cn5J0CgrFewXvokkNh
	 O54bMhS5xQjFmBD2PqWJ5DGdM/DXpWrJRwhrJZrxMZVO4HDwjZVE+btonI/WXRdIkt
	 KC6yZCWoA9fL6rVPXDEaXrcZSQUKOV7Fee94mQA3nVtUJpCfnCvnww/vwbEs37mw8r
	 wSBTyHDP6EBng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A54C7619A
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 23:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167987412579.14883.17588194544092201412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 756c64fd72643a0e132644c7bd8f063f0b024c804b0e04842943b9c4f3d1ba1d
Date: Sun, 26 Mar 2023 23:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679874125
