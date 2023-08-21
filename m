Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D781114
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 06:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC678C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 06:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692599648;
	bh=pzk/8mS4DVaPXyaoeEwF1mHCZ6YdGliLBE7rloN8bdI=;
	h=To:Subject:From:Date:From;
	b=a3Yrh1CMiFHWYXCaBpbTlAGsxvhVIsfjodSZ1udii/jpMsHZfsT99zFMUKhTE/tt3
	 174JsmENJqvhJqnZnXIrEI0mRCbELJKtNZ1GawJjDMNBPj2LdYtDroN/ZoTBmKGIs9
	 Bl2Fuoq+hhjXANUjwnBUkiuW8lzf9qnbc+xTjagWIbsK+m8KtuRVpH9GZnuXZSssPu
	 g5Bu42wtV0m6/3Qmp5mVnhpwMPkUjWRnHiT39EJ7I6AGXgRK9Me3dtlacaEfRTlM0W
	 5rAbFCEhfxGCQtc3+waM95fI4WWyJ7oUITEqkp9cmpsuA4lF0XLFvghT7AEgt49u2h
	 /b5PXbrGtM6Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A33EE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 06:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169259964874.12014.4521942242659121637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51337a297aa15891987b4afeb2bacb42344f95c7483b5468f0cf1d4731030856
Date: Mon, 21 Aug 2023 06:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692599648
