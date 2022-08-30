Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9732468F
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73331C4314A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661880653;
	bh=1WD4nauyFLWo6q5vDAj27YkPLAsET9SV+fHHOb7fa7I=;
	h=To:Subject:From:Date:From;
	b=NGsxV3dRoQQvEm3TRocqVYIPLwip67lekh5BdoGkrP7r8OPqOr3ZAQo/1B0IXlXXW
	 VVTX9vax58nKzDE7lb4MUFkSAP1CGkAlX2nTh0j6WlQm7gasjPzbOlprHvACj6U+ME
	 gEzeJ207H0t2mpA1AOGX4a2TXCj45/D4OFPAEVVgmjghUKDkdRtSLQdk1t8kp4VA11
	 Po2kER33FEksLlIgaD3GNEobCYGkrKOoi8sXKyiL+j/Hl60VjINxXgr7cv2lpUkkDG
	 2SLOU8NMuz30cfdVTCAgLDKRnLvV7B1ckHqJRjR9NSN7BateLFOvQqDN09hfDTZKKm
	 ALAqHTML8z8cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55263ECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166188065334.18304.7443254667517057461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59157c8b5fe9717039459278df0632fdef2123b6249d2dadc6076822e7aae00c
Date: Tue, 30 Aug 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661880653
