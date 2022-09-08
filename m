Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C1646BA
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708B5C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662658253;
	bh=BThlA6r9tLta29+OGc4OsMJ+AHcV/qpHYpAA6Vs1AZ8=;
	h=To:Subject:From:Date:From;
	b=N46cB1CIPxzDTZq4PYWAQBrqbR2jl4OVlFwa54TP7jEKbLo/L7LpM2HH/Qt4lvSKt
	 hW38df+A5UFwatYsN7K3LZnufv2aB0Il49cL8DxEYL2V6azDHg2/h8YRMIkaMqgQ3o
	 3F5Ck4akxrerGT0I4TL0XkO+8wDwXiGpgPLdDq7yuwCVR/1DwzFIqOGiSjeuR1DRFb
	 cHB3jVJFIrBT4vwQcfDqtX9EltHqx/0Yxcye9RZAPVcw+YKEyGEkqjtK8xguVpncts
	 jqAcB0vgRxSAIEW2bJ8E7+Sg82ndjze1ZIvPcMoPqVdPHE+PUqcgDBtAzpCyQEHfy7
	 BA/wcaou+e9Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54313C54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166265825333.30134.11249881162286219099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1db7a1a49cde769809356d86d73b5cf1f715a281519845eeada0b3c4b0df9b
Date: Thu, 08 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662658253
