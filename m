Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF55186A
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 713EDC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661401252;
	bh=RViKH/G4mjP6NIZPsAkqavffJ38m47aYO+HodnnT1c0=;
	h=To:Subject:From:Date:From;
	b=WikOCWwQLCZiC9GkWK42ci7RmLR4HDYHe8ri+Ozz1EFg2WIJjpfVNAN4cnqQeQI5v
	 R4UNSp4j80SDdCls7qE8canzMbsZYOk2A3ldzMXE2y5QXoe0sNfv6/XkDIVAjF/E5B
	 fa3qR89EUxoZg1bo7aydeqlwoj02iv1uKZpGwW6WG8JvmBnKE0qHPyRRq0YuHW6Dh+
	 duu42s4xBcY4ryr3zC0lMm+GBZ2zvGSht/vyxRpWYQT+JDjkpUTl8HIhAZYSuFFSIK
	 FI9FSH9YHfFD05UQkBAlHDmiU/5R7KT+eb5HC/Lo4r+5Ow/IWuLGmCBMPBn0+GVKAt
	 vptUbFCTk/N7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FD7C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140125233.5191.16429671655896124183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e87dc7da3fbe21c5a5c732337ac54df21011d95ebfc29588d7a6315194e79a
Date: Thu, 25 Aug 2022 04:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661401252
