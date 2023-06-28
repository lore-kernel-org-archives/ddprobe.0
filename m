Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786F01119C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 22:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1130C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 22:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687990388;
	bh=D23VFBBRI9+LT/90x1RMvrhYd2UgRL4TabpbmO2L1vI=;
	h=To:Subject:From:Date:From;
	b=YpjlWXfKvAqxBMw/8inJjFfolp0LM3dLzTzyyZRz1I/dU3u3RHIVZSyC+cN33smn5
	 9eRDA9pJkzeiTemVWIPbIhk+PmGyoXyU/CmffLKvEUzuJAX2ZYY5oiYY5JTuSUifoH
	 4NBuovPPm/6neXcSSo3U6O8r5dDetwZrO+eewqec0PikGy3KbA1ex0uUsehp4KCVix
	 2pdlU8wHkwHJnBEGF82HSTH/1sTYZTasxZZQ171GzouOa/6oUWEMj4PDqubvwpae/0
	 Dnt67wHrCYTSlh4XrhGctptpIdBt4VeZP/Pr1N9rLBwdatebZ9lxy8Ry0SmRzpWLXY
	 QW5C2ljMPc/Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EEBEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 22:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168799038871.22484.639954260834152427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d5eb42440497e9fcecfa73b04e238a9be00ab0e8869d93c7b1c79158e850d0
Date: Wed, 28 Jun 2023 22:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687990388
