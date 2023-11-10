Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E578E442A
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFMemoUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A784C433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699631296;
	bh=cUpxk7mJLy/UhwgP8dBIogoYVwQdsoyITULo7ZAKkTo=;
	h=To:Subject:From:Date:From;
	b=VFMemoUIVDyGmFPIPN8sJo8UoSFGaaJ7BeoVeG/PIeAQynl+PAxyRgF7e7Hw1RTCc
	 wumA7z3aCvpo2Td+ci8wJm+h7FXl4wYLcJpTzLklN7UcyoSIv9BYwtTgmV+G783xh3
	 obHjsN30fBKCkAieryvYH3Y4PrHxw7bS7Sd2E7WabE7wl/j29MBdNtsXK9KjvqCiJo
	 Uq/F3SuNXQg/Ka9w1EaBGoYwG9CVpqoLJElBfjPg0MBqF+wbUr02ovus9Y/hAjWSFy
	 v50UXH/f0qDJeL470ps7f0J/vDoGkBiWktkZ74DE357LvXe42gUkNJLtpp5A9Y09Cr
	 AwJquA4rws5sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60980C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169963129637.30855.11433619969305183004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431ef76b3e4208353c871a6ee3301a598038e47d5fff57ab1abb947dc0c1f8ce
Date: Fri, 10 Nov 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699631296
