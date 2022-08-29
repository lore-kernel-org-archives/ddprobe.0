Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2D85CA8
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A9F0C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661809252;
	bh=rxEmIakaDi3MAJaMQIMqmuSbvdBws+pEvZPa0j7kvzo=;
	h=To:Subject:From:Date:From;
	b=pQysC2a9hdV9Jm32h1/5WMLzkFI49/DHyKCJ3Mw5fTcCXCKCvl2MsunmXBACZkIe8
	 iJ6nOHcs6fsLsksqn6mRXHXuL59mSzjKX5w3Y1zhaL/0AjbUl2v7qL53oN1kt5t1Z8
	 kXlBrN4F7f4X/z2q5Ne2Y0boHB4jDM14/p+SFnzPuVozXGzm5YThXUI7QIOaQLOZbO
	 OgunVZCWZ3oPtK35GnNsmqKUxRUHlh76VhqcxbRbtJ5he8Hx4S+t37QAUu/mLj5Lao
	 MgbNjNROm8vfe4x4GTUpX/LFBbROEPdmlQaPOyO5dl2E7VphSpzrHfPFsjS31I1W3D
	 8MEzoUskSpOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6492FECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180925239.27601.15522911966340358453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781547897e61381f37d64f07342e33bb3e7069fcd27279234dbcc3f64714e51e
Date: Mon, 29 Aug 2022 21:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661809252
