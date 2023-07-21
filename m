Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDDA27F00
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 17:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D086CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 17:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689959528;
	bh=i0s1mu1aAcY6tFOdRy0Sl+mLiGKs2h0p2P8i/7hqDTI=;
	h=To:Subject:From:Date:From;
	b=fuxbrEXZfTORtvmy+PdVxvKM46zxvZ91G5R0uF2gcY7RDUroR0LCHqiUx0mh8mJmF
	 bWNxeXaGX5K8QXFzSP1LlA6KI1Z7kYJ1659ROamZh8L0tKl2TO70qSEThevFCf+GbS
	 TEF+wyfN9d/n03CZ0y7OqQqsk+4Qn4lxAcEIzi7JdUtGdtXvjnJqYgPxMEkGOHkjWg
	 bAM8HXR7nCH9MYoQaZwDhDtyFCCsSxoNAjaU8srzpC0dumpuA3S0qOtbnHKwG0PSCC
	 an0uwb6UmFGN1Y2fYhzCC3fsGkIHKGMgWSBwmkLSMX8QmZeym3IZI4OsBgEkFYrxLR
	 wLYYIFE6bypWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB17CEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 17:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168995952869.13064.8666758937148845163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decaee7ebb84695b7163572d51f971ca1bfd618172366bd24cf4d5efeaebd123
Date: Fri, 21 Jul 2023 17:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689959528
