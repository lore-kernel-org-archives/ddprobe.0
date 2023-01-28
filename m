Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A514193
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CC2C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674865985;
	bh=g9ut8QQaMNUn6gC2PTcN0YxPB+sICAzfZQ3w8XHix5k=;
	h=To:Subject:From:Date:From;
	b=kPss0jq5KsVqK8Vbx+96tPv2720m0XHfH1XXXF2ia+SbIz/TKl4Ntd+UWLnDfpuF/
	 yu/VUX9KbTVKelwQdrKLDoqHBVHXmaeq7GiISTHxq+2mKl9d3rW7654G3dmSfIccUD
	 iqV8Urbwat0nWHiwaiWhDN8NxqeQGKpeb9Zqt6JFA0sxH3ExVkGhmEIIkhh6Ha7gx3
	 Xvrbh8WPQTrIqRsoWVuuRLUM4LSavJvSD7o97fU6tNjxlQHbEqfUSj6FBnNuvHrHV0
	 N6aveJJ4XG20H0t4wh3MfiH78gNCodrtGGZRC4Ba3fYEswehuQLFSr5FVAeExFivfe
	 NC70+3lGQGQQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CF2C54EAA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167486598575.15533.5336892582342605502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f37a8d8dcfafb6f4276a1ecb8f191fb295480045816846f7babc9370b8aff75
Date: Sat, 28 Jan 2023 00:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674865985
