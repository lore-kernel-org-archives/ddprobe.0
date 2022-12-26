Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91012917
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83CE3C43398
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672078887;
	bh=7xFTtiiulUM8+tjaQ9Xv8PStiLybFKNpk3ioB1DxoR0=;
	h=To:Subject:From:Date:From;
	b=ktW/HowERztu7cc8JV0IXrzSMni4J1Xss4RXo+LToMEPYJDYPZ33Kyngb5Wb5p2sy
	 Ak2xdqRO00r5OC+nhfYEAc5K1xtrfIK+y4bgz4zr01WavNj2mPp0QiRKJQliMsGB6a
	 BSZwOqk9OM7pprjqpzxKFOBroZzZoFQb4BiqoI2ciDE42H3NKa040zV5dPVIb8bWFF
	 ryW26hODN0lZD4MRXFdLuxP/L9FPVj9Hz0d7qSwwI+pTA7+wVHME10W12i4xU00AH9
	 /e+oSKQdkQAELdzNbeyCFjrS+SdTFyOD8nciA6DKjEbUUmIYs+L14RUw/U5jlz5eq5
	 /8DUaJXdsK1hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6398CC4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167207888739.24480.12578254657412826368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73345037be0c8352ff011f9873b804100bdee0315ba2afc316499b393b734299
Date: Mon, 26 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672078887
