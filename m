Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00B9622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70491C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662703853;
	bh=FOAsGwL0ldHYzXq+PNZUCyIWYO82d+g+JbMtOTtuO1c=;
	h=To:Subject:From:Date:From;
	b=p9x2adaj/P8l/FltLXwR46rfzhb0qawCP1fpw/ZSckn7bN0d4upzpNjL/dUZPOS6y
	 EPo90dGDuqoo3hgzfpQfUHceFkcLu900EnwRTssAoe4g2/26r7F565SG5uLqV/qgqb
	 cxD3R2G6J+DaHUwJynhXWmSbF/PYzNWnDLiQ2XhdPAp9vrgEMY3xMRPCMV6oVRt5tH
	 b4UiUpiQB4Q/LSyz+nPJv5f3MLHPI1ych6GJXlquQUM8rWWRkMltRAW72PBRw5oYpn
	 Hc/BSkmBuPKu1a6KT7n7wAwiFwgGZ3fAVxWZMiFN5DBVNAMbf329qIQyrZkCRV+s2I
	 tsxMg3xk2abrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D2DECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270385334.7240.2143472167850242782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672f9c75fbdf3777381078f27f529e99e0991f653807e221b319de33c4cecece
Date: Fri, 09 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662703853
