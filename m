Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C5866E8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714B0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663098053;
	bh=Tn3Euis8G57gspJqx05Q57pC1C6jaCcPsA1WZ6rBqWw=;
	h=To:Subject:From:Date:From;
	b=C6eNat4UmhG4D5r8goO1kmRQvf4GW3jexsWbAIvzeYNtsalSDH66i13ZBVdph6Ld9
	 /0LxkTXASi8Zb5NNhhJ4qxgj2hF1TEg0Ot6G1eqKPwDyHLi5N2+h/4Ofxp8lRGvmkU
	 xQlz8NFJdolshcK50zQcvZIYNOiRBbHtEOpadsPeUW50toczg1CymK8y8ZkcwMg+UH
	 LIuFPDvCEU+8BzmrA4DF44C2wYb5eg4GqReIRMy2BKmAPbTT58MOmWFxC6vm0PYsjI
	 u+FVYxLStPVWpmRwFHXy27VhflR0iaiQKe+ICu+ZJTPcTOH0w2M+JPu02ynPj5GDxK
	 0VSfZ2QaJRY3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54732ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166309805333.30997.2113279493510515479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a810eba276b7d8afe787204df3591dcefe5ab2db2ad04e264dfd592964553161
Date: Tue, 13 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663098053
