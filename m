Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71F81C04
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEBCC43149
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666132253;
	bh=YD7ym1hoAfl81wHCgW5MSDlBD+NlAZ7ce+sQh4wELuc=;
	h=To:Subject:From:Date:From;
	b=dDc60ovHdcFtsnr4QAQ+WgBbbQi0GLQHg58IDSo88NI52Rz4EWc8+5/KLhyo098uf
	 vrYDxt0/4pkB8ckDhLix4cCBD6PUglWsta7KAKWIMHB7H4wT94gl2BOfWBV/02f6mg
	 Oxi3PTw087/T17V5g1c0HRoI/QZSw/tfTF1FMl93PE/LtAicQF/m6SZwl0WzWuvULR
	 iB2KlXnrv28vovvQ40o6J72A9BqovkjR5D0lSOV4LRoiLG3B1g5cE55zceMLO1dzQk
	 5u0OeH9xBAnRGOHFEKvq36+RNXzfETDFJVSGhD+FVhqT+L/3OXfcyJjld3R72HKR2R
	 KCW+UzK3Ml96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55921C43217
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166613225333.12115.2736293934262950438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1966e00af34c388af93bd4ff926c3b790dcef3fdf3b87ab54bcc603dca18ac
Date: Tue, 18 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666132253
