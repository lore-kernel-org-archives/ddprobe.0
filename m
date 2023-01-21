Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C48B748E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:52:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBBDC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674319925;
	bh=+oYSus5jhMySkIjjZThr4cBN5w64ksIuWsCPWpAgYxU=;
	h=To:Subject:From:Date:From;
	b=vG40E5nKkQC5QsqoTqFM+oP7Jeh2GYXMd3LCpmN1Umjm2C2A5pr5lugGVnMPtyWpm
	 UkClW9CA40Y1hkR8hI70jKDxXoIrAEI8wy3l3FpRU/nPagzVwCz1mjVPhAVhPW6ANv
	 i9IVSIR/QCrVgzChT1srrrbmx4roDKmCO8HPHDWYOLIe7fkRnBvOWqXhsy+h2hgUgq
	 fhRQhl8pP8fyfpyX0a08RkiALCUd2NyBA6xE8g+ytzTvzvAdF/fMYgXHUy1rjeKBgW
	 x1PPUMR3cdQCQ5VDmEL1ZPPiahoiOCsAe7lMpFKR3HtsUKaqsjSsPIwdI7Jbz213BG
	 ILiIRP0WrWBlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16CDC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167431992572.9048.15430619952369285895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d71c9ef4c493d0971a9b7f894ca13c0da7302b2b1eca6e103ebdb0390e590ea
Date: Sat, 21 Jan 2023 16:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674319925
