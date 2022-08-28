Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FF217E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D38C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661670652;
	bh=elbXUJAkuIwprKZAj3Eyf6meUqKeLMCCJaYuvK8/gI8=;
	h=To:Subject:From:Date:From;
	b=EiDlnVtipPGBIM0tTDrotm257iFtMiWKBJbVn5xRVaDzyobJh+HLvuUORKrN2965K
	 5hahczVXLYqhpZXlaGvYma2Mmwvz+sXpMLmXhH3EhqX047KxpKGteeCeLMX8VTpm5p
	 +Qx46IKRETlU+ywGUS3soIcmnLD+IF6pz2c+cbgIHWeTr659ILlADElMUogw1zG+qQ
	 K6vr//OKcJE1CDdFiMJENtTvpY/g9ChDQws82buNVcMOaZVJ9tzyKZS7ZL4tj2w2K1
	 3R1lahFARljgbiQskkEl51VmC1NpWqyLbNabNC864ZhdTCaqAnhtIFmNbU/rkMVXX3
	 CnWwCCqMJL/kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C34ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167065232.366.5169101680701441922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2358a03dc2d5c219cec3d037593ba49b40e92aa65234d2b07e775bbb6696efd9
Date: Sun, 28 Aug 2022 07:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661670652
