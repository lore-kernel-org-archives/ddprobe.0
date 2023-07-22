Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577856133
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC383C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689990128;
	bh=lbK5Z60/BFcqO9wDcoZ20Cmvl14ngRfmY1Lh+sVP35M=;
	h=To:Subject:From:Date:From;
	b=R0q7w7JEP8LDyxOgvdCS98OxN61mRgJeRSKRI5M026VCO3D/QAGGmVBOjYgwBDrsI
	 HxuuryMN1mhCNMUw/VkKB8p6PUbbHy/i26/USTH9jVLusY0r+Eont/VevNIZ2RIT8H
	 NuiPKK3M7sgvjGrFgQedl6GAB9WVp2F+xG0t9u2jn6vAXuL0rJSgDc20zvMUzIbjlc
	 SFHoOw5A9Ax47ZgVsbhNQoMnAUwCbZl4BD9iCrqnHk5NBLv/QBFBIUV3L8Hq7SJzoV
	 gM5lhobLDhASYdFGR8c9jAqR1rx1xoVEgMAjGSAgW+eGflx2xgUXd2uHyWGlg7Coh/
	 QtpQ/BgHx0nBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB15EB64DD
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168999012869.29940.2587673587464119321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4602a53ac9ec55a0e729d6116658d194499257381690b3b9ebd52d5f1fc6de
Date: Sat, 22 Jul 2023 01:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689990128
