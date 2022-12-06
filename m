Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB81F5664
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 718DAC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670358054;
	bh=OCkKpDgKf/shchxVtOzu8mbRsEyQusnnEUinuS7TEJQ=;
	h=To:Subject:From:Date:From;
	b=HV3GV9RMW2Zfh8KsIvKlv43upXPbCFNlmDEY4t7w4EMNie4cAqPT2VO3zvrsK90Yr
	 i+AJX128Y8t3/tu4FYyZl4fvXDbYpsacmL7/apQUxYHg057hDGC+OeuG0l+gww63v8
	 XaVOYjAyr159m6VeH3WV8NlRebpuLUG3I/Gmq8iC6ct2LcovrewBu0cBgGC/+PvS0C
	 S1BOeQQntej0x1DOEPoKxIhcKO1NOXcAiQ01kaZEbGnovheHQqW3bo7GARxIbEdu0p
	 DJ2RY66RJZGpQ7ZPJKZ2k7UXjQzOlgaGdCa2LqSv4Z6NhZn0owMpLl1V1vC2qcZ0Cb
	 K1KOZcYzq43UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F05EC3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167035805431.18459.10504924497732374828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edecdd19fe8c0e9496a690bbdd408277d1e49cfdbae0663739c4fe1f1dc023ea
Date: Tue, 06 Dec 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670358054
