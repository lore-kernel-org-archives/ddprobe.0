Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DCBEC8
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 773C6C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662024653;
	bh=aMLINWtzM3onEg8tPDluL4EPP5UzwnxI6nIjuO60zWc=;
	h=To:Subject:From:Date:From;
	b=D3HDwnsFn1p8Avj9vinF56FRZOcPvDB1GlyFzWtdIoXDFyyC7CyyHRzFHCSJ5DVLP
	 vpuJV+eE4O8w4hnpA4VTIizRqwf/usXSG7HrvohRJhJibR8geIKCdU4XrG+h05Tikb
	 eyOELDgy3MXfYsDbx38ISyg6tXqwhFl7jeBORIbM/V6yoQQCxgFQwCR2gmD/opZQmD
	 ElCDCEqLh6kj9gOfv9yhTW6/HcYqAY3+0BWHEHI7J45X3U27OUPTMLzPEoJkKAgVRU
	 ZExjVCckVAQdr6sO+Gc7D7PP4Eh/+FlOZIdQvZ/4iOEmtPdl3AY8Z294ekiTMSW+00
	 b09Y7r4PTKmLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A319ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166202465336.17632.8220167645821989815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1ac283058327486a4568ebc47fa5a8362b78383cd2aa93785079f52d079d12
Date: Thu, 01 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662024653
