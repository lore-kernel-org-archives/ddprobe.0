Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73332F24
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F9DDC433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673266887;
	bh=+znIiV/ssb9p7oVomgCa6sKtpELZP0t1hbtpCE2dutc=;
	h=To:Subject:From:Date:From;
	b=FZLCR/zjbvVBkZ11ga1cTr8YNdLW+Ln/Rv1WeD6U+Vu9eEBpvlx3fbeSEDjgGmsvp
	 xQRbdcMm3549e3NK6jNjeGb0w5A4lQ8ZMTZLMdVB05SYJBChhiIGbiAyReP+Tz7wzb
	 jmvnZro2eXrQOVr2mv2Kjsb2DsM9WgTPMSmOHD87k/3NQTwlqOG317RYVPFWcALWDn
	 KO5iTndJLJQLnk+td3ZD5ghPdYBOYp58mtQ3SKktjaplFpPFno1VKqJq9thhxJYbdX
	 GE+kHNGkjfDoOO2VolbFSP5QYB9TA9R94cxqO+A7rxSyv0OEtqBxMlAjJZGzbtc9vc
	 kHeOl72Pk4bEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70662C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167326688744.19505.2575841485396925124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cab3c81c58158c6c6ee146f54d5c4b955e8619701d792f036bb7aadb9ca3f73
Date: Mon, 09 Jan 2023 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673266887
