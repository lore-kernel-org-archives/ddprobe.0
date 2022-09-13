Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2726671B
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71539C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663111853;
	bh=AWPR404k+2w8qV/V9c3Ll75T86bspHyQ3wwsP1XAJGM=;
	h=To:Subject:From:Date:From;
	b=Kvj5MqGTV2I+bAQCK/Wl2v5K0ow9tVpfuRAKgIyBHfA65gdxGahFy2ED25KOwijlH
	 c4J9IRol2ZCWr+0Rp1qRp/wvF46MvEg4uIA5Q+tgWPf8IUw1phfzbuJorGlAhzgx11
	 xAuh7cztxXGQcHWHpqyPV2g6ryJ3HdMwB8cnhZcelwH1RJmEcwZNzQ+yN9fVCFz1r3
	 MvGYBo1UWmN6Z5ePq2WkQTM9vogCSFAIwV2GkAufzBE8FMFhrkkHEO+WGy9DqLnL1c
	 xyguQSHOXkLb2Tis2JcP1E85jiiFWLrqptM1EX3X96rYI7YpFGPjtyF1o+KeGkLR3h
	 JKiQ/E9wCQVdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DB5ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166311185332.30279.10865574298952801756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cd668c26fc2ad0ab1f1dc1205cf36a718b735fbd20fb5047ef5f4a364c2d5f
Date: Tue, 13 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663111853
