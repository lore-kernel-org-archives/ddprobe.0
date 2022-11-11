Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95FF2771D
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D90C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668198054;
	bh=KbwSpfskbb3UNcQ0uD01JW3cuQoZkrww05SyceQnFTM=;
	h=To:Subject:From:Date:From;
	b=bbgMmZ4k/5FtWxBDLuhpVyvYGLrwgcofvJIhVFm672bA9ScYUJStCIpvTuQ1p3KPR
	 bTfTOAsQqXzgJQiB6Px68wHE2GZSUdJlIAiK3MRkMLbynWpJWIbpQ5I+cUn1i2X/i0
	 PuLB6u1+Q7LwAB4pH1AigmMvo6fjXYm06wtW1O5ZKLlWyD5Cr4fIQQ0QV4RTmTNPRd
	 7I8A9Mjnr26ykURyJuJpzpP2aaAB8o0UPYBh4Iktw6B1n3G3wJnmvnjNLBC/mfBHvB
	 hwIWNbHt9bahB8L7ety6Fw01nR6YqnvzpqyFoJi5LIS/ZtvoE2NlcKWy6uILCWizqG
	 xe/JkxyrBxmjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54488C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166819805433.532.17544052004625342732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b215d712602f89dd0bc610e7d77bd15b4a6602efffb020930f33aaf64effe7ed
Date: Fri, 11 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668198054
