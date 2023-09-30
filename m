Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A66A33F6
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 20:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2860C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 20:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696106168;
	bh=FBwr/7sOycAvMGeeYC+GTD+ZgQZ/WIrhrniah1LmONQ=;
	h=To:Subject:From:Date:From;
	b=Xv5GSQ2GIfXY0qiYzu6aAs19dEKx9BlCgZXpOGUQZUMwicfafCkV4u4E8dzAb5V+g
	 o3JcYmdoBeHsiVeyV9bYpzJ3usdiTE8xR3WFyqtX8i6eDH8zk1iZODSi7/t8MKLqNw
	 XPgRuaI0iahVm0qE+mjD+7z3nggjAmKMa2bnwzDlT5POy2XANuF5r/aTcuUQQ5cx9E
	 aShZVxV4wepC4X4Gaezwm4TXrtRhVRTNPHSHUX9+hvN1IC/qGTfKaliXF4fml/NBdF
	 aInFVZAS2NqNNOwoh7YcJf+OpgvsvwKViR2DtVkNKS5/SdL3YzIELV/NoukjsyRvIu
	 /0d3IiYIEH3qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A704CE748E6
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 20:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169610616867.6172.9758159142413577649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859b05a19e4a4a5330f886148af5a2e1c15c3679e70c8fb3ff8f7c68cd0aa76e
Date: Sat, 30 Sep 2023 20:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696106168
