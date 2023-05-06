Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFD07E
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 02:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2ACFC4339B
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 02:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683341886;
	bh=Yqfq2M21sgeJ1huhqov0Ye2YNbEn9TC+7M5N2SsjfeQ=;
	h=To:Subject:From:Date:From;
	b=AkZzWppvChvbJINfJMv0xUq32ZQvbnZ/YwSmFMEyVZ3zDyV9lYzAwvgpdmHi4Ikgk
	 WeuZUVeTFklDBGI7k66kO+MiK8SU7z6iSI4b3lxmjTd2UrgFt06xn4jM6s97DbcJbE
	 euNMEIeDZ6qHBmHSS4UHB1LUytNF9jbN3toGXaT2LFRtNWiv8NDGzlFTnniQafjXLM
	 AlPdCwCE+2xLv0dVbxuWjEdnhRlnfu7F8bv5uJ7sNxNTlU/JKHOu26EIkNXTZCpEXh
	 E2Wfug6YvFaMndxcSUNrZwbke9EqFbQme9EfXbbduED2lVTJR8tYeqw/RtNeiouyMj
	 1MiDqjfxSy/Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9F6AC77B7C
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 02:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168334188584.15838.3636799175387062730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c26685f54527228de3262a0c48e0e670cdf499918118d637bd70e00cc81ec2
Date: Sat, 06 May 2023 02:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683341885
