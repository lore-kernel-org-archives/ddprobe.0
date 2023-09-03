Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B69A3C1E
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 21:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7130C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 21:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693778048;
	bh=Rc8CnK2jQ7GX8pyfp+8V/MpQ1UEw4vHqR1x38ZreAbo=;
	h=To:Subject:From:Date:From;
	b=budFcn2kjfbfTC9NfV76dJeNb4Kkr0pjfCwGn4gEaRPsEaqcon2ZtdV0sancMl0wc
	 clt4GarQupdgptZ68XYK8VUsHM3kCr7n7E/uTgmbql2iu99N0AHGEvTlK/qaYuvPS1
	 D/Ld33e6woP1NtJ0l9qbjqAyJ/Yw6AnosdoOehp1JlvX841CFJZ3/3zKQm8TkYgEAV
	 S/0fyFFPX6wFaiBQmNsEpZS4hkQ2GXIi8wozU4rvrVDeD+HpakJcBqhmTNyZu9kxql
	 tm+jtpiqadu7f5RbAEgluSIZg+y12WU9wzuDyDsh4FeH5oQiA8KF/vdxJATkVdD0Mf
	 e+VJ/Y+FzmTuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B841AC83F2D
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 21:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169377804874.20558.16518096852730428226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ebf5338d6e492cb7003dd84b868cb22a62bc493298c4820b73249efc8fad49
Date: Sun, 03 Sep 2023 21:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693778048
