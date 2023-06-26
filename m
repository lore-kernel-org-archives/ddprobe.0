Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518954C75
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 08:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E46C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687767188;
	bh=HJEOVEcI9KOnxwPXSMGbA5qdBkyPZ/10ykk7AxTZo84=;
	h=To:Subject:From:Date:From;
	b=VEUcnSmCOCMG5I3jnDMa53q/rMLHnRgklZ/oIfyBALw9ZIuTFkHasq7EkFrx1M93T
	 ALCOpnCsCE06r0VNPCCtfdzkFBNSQ12QTWuVjTiP83nhHlO6qs1EvChdKU05Zp9lBG
	 4qEciEokKUc+3P6++gvCcHxrusXLPDi5MXPi4TwJKp3LrqjrnCY7LQX403ppgXgk93
	 fAaQXy8BFT15dLftldstmrpZ87dza0RjCgkBv0seQa6OofEXeJMe3W78jUbTT8I4GL
	 aJ3UBTIVq2tHWApG/lVz90Ragp7Kv6MIcxfs9QOegzHaTwSknxPG7TzlAJIzy484Vx
	 M8E/+Lmx5UACA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A44EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168776718866.21726.5920481277852388697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30939e0e311188201fcd65565d8d044eea53f632915cfe6f8cb507e7486049c
Date: Mon, 26 Jun 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687767188
