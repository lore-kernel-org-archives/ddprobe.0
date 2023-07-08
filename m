Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1EC7F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7995C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688783228;
	bh=iuRHYaJdgdKoe5oKegFg01W6FS0sVSFKMlLEgwWTDsM=;
	h=To:Subject:From:Date:From;
	b=JtUYtEURZy3XtsZ4sCrvbR18taX33oWDJqoAvfbo/0zLkiaKzd1jV39UDvXxwOP2N
	 MUNv3MeEOQATRrcsUBQAx17sG3W6mcCp6fFlVTX4z9X+UisEHtG6TPM8uyeuO61NEe
	 SHvx2KDL1+yqfknRNLMrk5xdwYw8OS0DDWk1nsVONgwp89VvYwjflfYFdmk/FzwJbT
	 x3X3QchdCc9pmLDZjStTytuRjgyoi3uVGIv8VG8oJPfb5WFREyu1QJ+z26tcIB6j0n
	 w5g86uX2YvLhI4K08epe0O+x9lDhNtVBgrP2jOXR3MBWAY2gaLybixXG0uJPiYKw8z
	 VFYnLzVf6AN8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF676EB64D9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168878322870.28562.14453121106629138334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4d629f76892b21b193e701d8931bc927beabba1644a29bb049ac603bd557af
Date: Sat, 08 Jul 2023 02:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688783228
