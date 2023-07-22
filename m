Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8843262A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCF0C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690024928;
	bh=DdyBT3nhaVp10rz3P4CQe+gyp2GKjPoJq8pwXj3+lWg=;
	h=To:Subject:From:Date:From;
	b=V5DUeF4W9inYPNIRo7NH8fn2LbB7IIimXeRO3XGWAXgfOnc/DE3DYLY5PN5H+TEFJ
	 dMkHciAusVFXofWDrLZAnOSNS+zM8ofCGFw7H9ktfQDx1WLUGGfAjZkKh2WqS7d857
	 FEcyiDsDMr+vgOvISE4ZBAx1SjOzfLRfVLIzlYJ9DC7w8GS1xbsBcUOpddH4EqcVVd
	 fuJUEOCYb/1wG30Y0/fzmmYxjw4oapRzSW5jpuGEozV9VaW/TM1KrtQjVCVY4HwP3o
	 TMyYidEaP1WS9B9jJyXBV/sZxb2STCajrXAfZY1pQWkD0WmAxnQl7XOL879b2zGiJv
	 Yq/a65uLVOpDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA594EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169002492875.29197.14878472278501406259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49633ddd3eaf0c8a53e5233c46204876ac8b3c7204a8c4c0e1dbf968de7f55bd
Date: Sat, 22 Jul 2023 11:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690024928
