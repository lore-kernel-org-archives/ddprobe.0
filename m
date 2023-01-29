Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A5A20EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 13:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11DAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 13:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674999785;
	bh=S+YIyJ45sD1ZQHXUGBAeNvd/7NZXCteM+AnEa+Rypco=;
	h=To:Subject:From:Date:From;
	b=KUKWn5FqhtxDcrCdeMc+/2b4ZfcNISsg1mI9/k4gF/+IXdanNL4xqKAPWtvPJK9Pt
	 TuG8AtK3jLJGMZl2ab0OJKoUPrF7Ts2pmoPruNrjS2bUiNposFSP9/xpAGZPRaXw5O
	 QadphCCmduvQS3xA7b/YP5Fi5UYPLbSO0NS5/oAyNltbFsySgwd4VylWsNHGFdgX5z
	 ZEq9d/3c91rPZ/guR/xZqTM/GQOge0ueQW8jUvnHhzPPLj3yNambBpMUcZkohsElv4
	 oos5iWsqjqIwj9tisLKGdo3qb71033MYdbRXE6Zg5Xg/UOdShWOw/DkmIJI+rfrty3
	 heLagjTlo9ceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F03C61D97
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 13:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167499978573.6881.16839741375564306114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591f7822f07ed9ef3147c434aa2dbbf7bd1c50819a3d76b86076c09bd3a68cf6
Date: Sun, 29 Jan 2023 13:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674999785
