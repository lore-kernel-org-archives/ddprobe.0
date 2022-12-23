Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B092905
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F7FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671785487;
	bh=QBHiJ5fMH2mFF61/YOuIvAJc4vI30XOKoI2oEY2zji8=;
	h=To:Subject:From:Date:From;
	b=dnONZpgrE3AwRWR3K7T/fIcu2OOmltYxA8tAmkDsxFZIf6+PbAgKi4pMhRO2yEAWW
	 TKSkToZeAoqB7HDwQsjoRW6EA3HzScyl85GJWVyfKauvHtMmBP/ug9eIhAXyj5gyDW
	 yeC0IOOmJTmpCGgjLLDzCYbkiul5pcQDSjwC0m5O4qS6EisNx1sCHbUBU9azMnXxoc
	 7mRO6kZHtf7KvoH8QdMhq0eqxkk21fOmf37yJ34Nm31fXRcumHldXI5pNiEQ/EkiwX
	 Pwe01ihIc3oDFem/ITz/K/xnsWVy3ajvycNHFwitM7k5tOynesZjSJ6jqBD7/fvRmA
	 tTOhVrOt6lzZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 615DAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178548739.16719.2478216495942344868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52d359384f785b24c823f6ecfce9878197432b472555afef5e66045b383b59e
Date: Fri, 23 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671785487
