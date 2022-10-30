Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D305A18F
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 781A3C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667146854;
	bh=InLa9BcOAENJ57nzO9dPZUzu7uJyQoC5CbAiPtJWpa4=;
	h=To:Subject:From:Date:From;
	b=Oa6BQigFTfTJ1rk3jHGAtkY+j8CAGouOeBEdrVm3xHxWAzQJWCakyae/UpFNRy4vr
	 4Vid/O8uo+5g2B5Sdqix4goCgfQA0xKEfWL/Y47InvAovri8TzJcGCKv4DLVmWPgXj
	 ojtPZAt0yFfFHffeue2bl3L9YsRwjzs0ZUAUWdv9vF3REs0mMzu4HTyhz2AtqzpAEK
	 ppAFYf0Q/eG3pHgiM21h/zmzr9+l1vqSrx8/uq1IxyUx2SlYLkfxJF40MBoi3kxP2Y
	 nKe/Qw7uOWtTYnpFwHUo5Nq1bkZ/x73kbp+H1reCj7ANtvl9U8cMd6c5BeGmdIcall
	 oTovNxpNj+aEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59045C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166714685435.4452.9034756989178311609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3252fc8025daed1df3fbafe548706d2aa9c80e2b93e9256bcc8e5cfe33e8403a
Date: Sun, 30 Oct 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667146854
