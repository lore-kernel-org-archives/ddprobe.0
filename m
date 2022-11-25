Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72F93C38
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74411C433D7
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669394454;
	bh=+Oy8EAD7CeMljsMRTmqY6KobNWco8slKHpKOs1yq1n8=;
	h=To:Subject:From:Date:From;
	b=Tla6QVu4xPsCOtyGttfB0mI/PRrzbtPMKcbMownVTx7ZwvitRDJWwwkL3X2KsaUdj
	 mqKnPtl4grTOTiG/8u/iCnYF9d0r1GkSUfnW/MMsR1vsf6ioeLkJWkcBstFVkI1fK8
	 K3onLa3R7IsxLNoLrMnJlJnNMhtT/hcwzt0Aa1EtXzJruqpyO71rPWCTWCnzesq99M
	 wl3Y3lAkYPLgSsYrPwLQKBBWl80R3Do0uMgvZOBKlqdLh/cmMG2V5EB2TCwyaymoBc
	 Ge+3+7JPOU+FBPD446/NKgJuG5dkhQqbLdAmLbmZ6rp/jhQmJ4fBdQRJcO5uWz2cvI
	 cd000gQcl5MEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575EFC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166939445435.3578.14262807802984451336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a882001d1febf07ab9f1bb96333441d5e027f072e83d5d5fafcb8e7b3d2232cf
Date: Fri, 25 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669394454
