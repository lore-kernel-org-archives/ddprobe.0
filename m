Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A222260E
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 14:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D460C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 14:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683989886;
	bh=3m0w91xGy+88rjITwX1mMPMUtGGj9E+C4E142Ttg8yg=;
	h=To:Subject:From:Date:From;
	b=mLC1ZJQ2SN/IShQQL2sIJtnDBkENW+JTImW/3gsGvS8imOvkhh9k4hyA64NYzQVl6
	 OMIISA1QWNQRT64MkTlCh1DegWrOZ/5mOCBOmI4UN7rLNfBB935ahDD/NUKf75S5/F
	 mFwnRnQ8iupkhZsmsNwldKxQ9kTmTHJLA/PwvJIG9pjidJcFJ6El8uVpw2bQxf6xWg
	 eL5h5T3RVq+p6KGtPZc2s/a7yoZ3VwvEqgv+JCJBSShiV01Yg5f/KStuu0jjWVF1CR
	 hl3HoXlkvyGgDAVd4daWrT8JACHQ5cIzlhXSzEnEdp7ZjH7gJEeD/gOGEhsSRa/m9v
	 /DEKAo2EEI75A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4B6CC77B7C
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 14:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168398988585.22727.15551537881295195058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c69e35b3972f88115438f68e96e0d85a7becb678545d1c5e9c8386d2cc3eff2
Date: Sat, 13 May 2023 14:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683989885
