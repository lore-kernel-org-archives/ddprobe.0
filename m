Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E082F45
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB64C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667993454;
	bh=7apuOG3DQr9nO5UneLy4F3aSKtYKOv/Bnf2auBrl2DQ=;
	h=To:Subject:From:Date:From;
	b=Odp6JyD9WvKMH6RlWDsNXi6erpLvKmBFHhEzEvTLw+16DwPRfucfOvoKt2bLZ+Qpg
	 UT7ejzWaCz0JzCFyLE+ZDyr41dixVO+AWn5FdzvFXm8BloJEcnvvg4za09RC7BLEL5
	 4ylHQGe+SQ24hRqtYiCE26mDE/0r6OEn+4UDJP1rqSiSNMHW/B707X+Ewh8CO6caes
	 ZGOddD9Ar80G/nwdmVLC/cNpjjeCuAYL8JD/r5fq5ZK0aPYCyBre/vOJCceLWgqpab
	 lv72M6ZI32Y6WT+FYVTEmd8KU2hmSpbt/Ie010cpDN/pWZt/COBz1W7X+dCPT2xD8D
	 A0fVzoW9tnAVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55406C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166799345434.28116.13746349560562945704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3277469125b87c0dd0cf23c318ceed2f3b7451ffd89e91102c6a4de838f29a64
Date: Wed, 09 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667993454
