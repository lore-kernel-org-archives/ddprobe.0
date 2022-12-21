Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00C51FB3
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CEB7C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671607287;
	bh=DtodpoqzRziVomyWkxkT01sSThVttaTzX/4D9w9Z+/s=;
	h=To:Subject:From:Date:From;
	b=geSuCsRP2RSNclKfMJoGOa2fGluHsGRY7HsdlgvVILsRwpDwvHgjFrEpkLqAl2mBB
	 lHUHT6qOXZww6bQyrGww4Xivx6sJ44rbSbOC949BUFmgiM8fC3tf6SUDHDrD9VlD/m
	 uV2g16QGNdehlm51rFPX6wMFXtT+8zK5HjQeqIfwCgQO7KOSLnHUfyH7ypKE3w/4zM
	 iQfwb8EP/oYzcHhLw2/ezI9U+XsT7ii9TJXXpFOLKW2aI0Hakd1h2l5G3sCeGreH5W
	 rK3U22JQXtb8k+QDpWASuf65Sbgdk5NwA5Zzo4Ld9QJhtxUnD7O3HjvlJKLReZxff0
	 TaasKMmtmyQ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607B7C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160728738.20039.9249019496645206887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9378f971f642291191dcee11628c5cee084871d724ad984c7417d1a1b675b3e
Date: Wed, 21 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671607287
