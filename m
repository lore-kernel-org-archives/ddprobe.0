Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECADC622
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B72AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673575287;
	bh=e6VFzoWJxkt623x7/pJEebBXi2ohw5B3gRTDsrvh1nE=;
	h=To:Subject:From:Date:From;
	b=G4FiTCSKudNfMXJxICeIKX5koccbyuhuWpzpp9gCiPWACXNEkonuWWBlqGRbg1ziM
	 hhNubHpQc4LCoofVYzIfwNKFGH8wkImejMr2hB80gEo/JwPhEKP0esCbvkGnFJKqHV
	 i8kHg98taKdi4KAqYH2HK19q7FEzjOlcGioMgL8ImN8NarDSsGzudEBMSsEeb2704e
	 pABJ0kIKcFNbAw+iZuGQ60NNFEGjenph9vIVcbNrKOLGrVrmnAvZCku/Q15+W/av2b
	 7w404ws6yEGUcTeQjGrVCJ/QlmcEIctFLxo+A+uH0dIPBK+1ZqlhHP0YR9rbT6iWcW
	 81IgB3BmKC9kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EAEFC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357528742.26538.17717239956058878449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93d645e6b49d9876238cdc7a995787044019569798dd6e087bc84848f637165
Date: Fri, 13 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673575287
