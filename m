Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F059210E6
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UO0Y8aOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80749C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704503296;
	bh=NGqxTFD6YYeospVPs/To39UkGG5O/bp1tGbNKnDuquM=;
	h=To:Subject:From:Date:From;
	b=UO0Y8aOMAuvGe8mY4mj8RTyOupfIw+DV9FgHFvQwDQT/eaSepAxy1e27H2EHBC16a
	 Jme/jBHb7tPo+rMEUZ8mn4odrw9ffdgjPpiydCH+ej5+PiyJ05ofXhJVXIt176nlhm
	 WgI50GkHlDTiNjuYokJuXMqnORIIIuIthQxipI1kF7u+YAL1GBRmU7sYp3M+DEyksU
	 fvIF3Pfn51DtKvrgG9jJHZf9IZAQCINklGJHmBhbR693c9GRvB9Xte4tcGrwAfdBXC
	 kArQX/9t3cS8BggO1D+ZjcOROV1rv9ieUNnDjLRiw5FA31aCF5jAClCtEPGjZOKjyb
	 Bt+GVvB+DiKXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F1FCC3DA6E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170450329638.29136.8209559072578712746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f491547da6af8d08cae6d2080203cfb1343d0536bf57b1b628759843bc45c5
Date: Sat, 06 Jan 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704503296
