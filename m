Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95465C85
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA02C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664579453;
	bh=KaguVAq7a3GYkItTYfSHTGafQK2QbBiPDGdX9fcz+XA=;
	h=To:Subject:From:Date:From;
	b=eyx48piTRfCcWbnjrSAbVX1uQaThOkQEDanq5x99Wn4gyDYTG7k1TpvLcaBwjo1Wg
	 7VSjPc0xS/5xiJ68ZlKxuauD3b3DJqSrdCF56XSMsWZU8lD9LhQdXiZ66kXb62OHFU
	 4Yu6bBLcmUxbqVtFKtwONI3MQ3bnl7kB8BtTX3/3/jEr3TXWQG4m6Zjn4X1CD9642F
	 vaQhXII3nblCh9Vh8160qEQqmhqu5Q0HxPaDvDuscq4WeuoOuCtjhwiWBTxGaK0J+f
	 D2cClDtkcW56Txv+nfySKTXWSq6HYjRWXcapeJkJLqnmgadJ6+kRgAmwHPj5jTEoc5
	 s3HEBN7satIOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530CCC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166457945333.10230.16629012085469972599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8abe30e80424e5784e1757314289996ebd6d2958028a5058719eca4b322141a9
Date: Fri, 30 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664579453
