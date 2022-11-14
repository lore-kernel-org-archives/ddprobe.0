Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC7D256D
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68118C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668420654;
	bh=rJEA9RaCL5BjPW7Zcq2YQPhUe0fGFP4cpXCaSekA488=;
	h=To:Subject:From:Date:From;
	b=rCfGHGCUVh2QgTpNIu6Ut8T4hVA2eL97/1jFPnOlLUX6pCpzXAAgwRc2UJY6ZuLpY
	 b6XfRvmlpADIoWNcmxRClUF+4A034ncQpUzuuyGMPoSfxnUL15IMZSdYzhyfgrVc+c
	 h9sq/kAg0ZJ6V8NsotXW+cBdofFR6GLzQyQ/vFKuVdvVIk6VvhkwzSa68XT5IHkMlQ
	 9JoSbzaarhvk2ht/R4QcfR1LtiQGiloQ84FQbnK4feTG9SBmRX8l9pGM9fynEKNS8Q
	 o1/lMwNrcRUFQJTusaMNjvEwlkVHYXFUfqRPlGg1Sp9sCdOyXz2itpKJWwcLrAn+rC
	 fc+aA4MVScT1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53197C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166842065433.22500.10684461220583708710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321600afdff9bff43218d09eba1529b4b112bcd2e53e03e05175600b547f9177
Date: Mon, 14 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668420654
