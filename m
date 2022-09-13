Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0FBB23A3
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3B8C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663049453;
	bh=svD6W+q0YOz+nFe9jXtDyyq39zbIoa7gbB/gw4l0jxg=;
	h=To:Subject:From:Date:From;
	b=unnjDY1+t80woWB2U4PWn0rIubpLmBCCaAyscz6RPeoA8pTL2LPwbDsUOn0g+2+m4
	 7VdFLVnCCqgWECLdMWJSDS2+V78QZBaMpjKe60AJ22cnXCcA1DCfJJsPfk5G6weIfe
	 44mVJNNstqbk2fxYFe/aRCc7ZxGAclX+yaPqhqsnuyaJCHLf2GMgfm2Y0tg2ZK/qsU
	 k86vbwfvgkcRQbhLMUBbP22mNgnOtQMzKPZwjGBvno7wiaMpRfwSVPC3AzDqPOODiP
	 pE1BoQhEbzO0DlOsCON/TNs1PUwWNL23vUYO5jLSKg/+sqJLjxK9y7oXqcoHa70vrX
	 obznlXG0xgpmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FE7C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166304945333.25201.14721536023430288349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e32ce8980e16caa8dace1e40e68f2e85e24f5f31b9d30ea4655cbebbc46c2ab
Date: Tue, 13 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663049453
