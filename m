Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E8F8F40
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF5AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667087454;
	bh=wDlh443aaXNh0GsfvtDYnmP1wQ6+hMKbk55XaNyeCtM=;
	h=To:Subject:From:Date:From;
	b=LQFiXt5UluXTwjg4UoE/vwVzh0q0boLPjAat7dyL2MWk4aYUPq0P0ZAlpPOS6A17n
	 zR+AM38rbkTzqqyohBX7nivcWDYqdV+Ql4rJDZLE9RQLgEh+db2IlTF3AN7Ded+R/L
	 PAUqAppbWa0kTd+X1GdTat+BJLxZyOQkYmboMIabaDSGWZNOHrifL0fNrx9LFvCDrV
	 /JY8HedXPRnZfmTCX8wOj7ONEjDrvG7xIbLmVu1y+1hud+6Oh3qm9APU1ek1jusX5p
	 4ZHob9FxRx5UBE9lh5oj15eF2wA5XkPXtRFawNapjZVDzSkW2FQ/o19wivKnmdSH7Q
	 kWK/9TeaVNVnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B72C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166708745432.13974.1890163264841339079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e3c5911edc836cc744e48a8c8464114d47c29c50f9ebb8d67f03eab6f0b782
Date: Sat, 29 Oct 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667087454
