Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFEC96100
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E37C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661892053;
	bh=wGW2pQ2isKLmYcHE1d8tvXenuXvjncOex07yE0IC/QM=;
	h=To:Subject:From:Date:From;
	b=c0DR2OlX1Y7RxKfCHUfzKNc187qbsneMeyfPabQ/dt2sqDtWuHRAWPgRkrOPQ0TRA
	 CREtn3nTs3B+JqCX/frw3LF+togBPF2DGed4lX4yxPlFq9CH/UPHFP3hGrFvG1CnCY
	 QKsrofcMyY3msCc5XjtK5/Qv1Sb8ETCLE16Vz/OHX/RKVOmC3xy8L6yyrypv5mW/id
	 fkEu8G3NPuDTy5GWJhSLoFkOcxgC0r3O+Pa3qTvgYjYz67mVxdCIOppTEtHCJyp236
	 lHSmprG1NbO8VjyWF65M/ltvMGPXS4ufOTxElXdndwD5MLqAN8N7kymu1IrBXAjomv
	 QpSQakVPr/vow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E6EECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166189205335.30838.3172769665467890464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef005a458a49f4220cb5c28e194c43b104ef4e1cff82b810a49e74c7fda9923e
Date: Tue, 30 Aug 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661892053
