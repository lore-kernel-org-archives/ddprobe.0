Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA856AD32
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBF4C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669679454;
	bh=tkfoFydr8QuAJ8QMDtHjGOK+RaYWSZ1ERBPeKXWe4Jg=;
	h=To:Subject:From:Date:From;
	b=rG9x8qs4uIYBECBnrY0dly4yVjveYf/3397tB6Dp+0f7lkGNIQvIVZ9bLcrXaYIm7
	 sNhWejetQNoIwY0Du7L7DVcpbHvW1sJqx3HCjyu+QEGCUY3F4cr0DKetQXyriH+NBZ
	 vExZGlAxSCJNsZ6vasSrvb82VvUAij+rU9mn1EkZ38eXEavu25pENRsCSUmBdB95wQ
	 aO6QzWbjEjBAFGvjwo+Y9+lW34FkE8tnwzzBNBfZHe4JGeKz6oFNrgC+eW4LzE5YDU
	 gV4h6MCKryoaedB4WyX+4mFuAizuUIxIaAuHRNH/8sqIv3OTE6v3Qv1qP4Vcgm+l6b
	 gpjI+7RLje1SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C8CC4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166967945432.5335.8546031294254996125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f278885332533f11ad81205d23d7ddc8c44e8e96a5801ae4c0fb53e18fed4cfb
Date: Mon, 28 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669679454
