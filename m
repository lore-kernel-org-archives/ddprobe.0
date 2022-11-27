Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F457E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA09C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669522854;
	bh=bxFMFrgwhg50eEyvSb91hrnfpbPoFSG00looXTs/vLQ=;
	h=To:Subject:From:Date:From;
	b=iVbSpq2A87yWM7/WrWxf+OTAQLAXud7u7hqtRDdNeyYPGYnyAe4HI7qxGW7IrG92U
	 1kVofUfT1ePJwMRjknHGcqwrJQlVOLKa2Hg0S7nTqtlx+wJ9SQAJoZWrJX+eXBHFwz
	 Ej+kelXkajGt6tmnjMqy1gxMbdKBFIsKmr1xVOH+o4RBH+SMe9+Exp9ST2xVhflap6
	 8wlwRoe09tMkr3pKHYzxpS1yM0CsnqM1GuQxgy0EcWa/78NAbQGVPFFktF3ZaWlaMG
	 2d+89viPHz3Pgxl/yabUO4WUepFB/YIV5FHVdbMkGrlSu3ekiYcE90N3sTJDaTHsc9
	 aDbEWAcGpRz7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5833EC352A1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952285434.6814.9382263355713453874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14019ab6d6f7ca3ed6b4df2d843049dc0bd9fa1d293a0ff3cc2bd8a039b8b648
Date: Sun, 27 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669522854
