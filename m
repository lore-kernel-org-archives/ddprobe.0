Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A7A5C81
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A8CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663343453;
	bh=2TBbfcrL/iqu34u0w5aKwz2Ty1W6Oq1mE+sIHHgbykk=;
	h=To:Subject:From:Date:From;
	b=tbkh7nY0HL0mw7mtEehyyAwxp9yzj2IKDMW/6l53BPSUbfvSlRki+anfUYmQ63IEF
	 h6gDnAl2cXYYNcRi1/amMphZq5p33rcE/SaMmepJPIeE2YY2CVvzIfnDYUfpnogK22
	 AyIMZNpN3evGqn09qaJDqNVEXSYLyXGe7JJO9HUGpx+YNEwiUD+vjvFipUEfv1/CDz
	 V/KWQLicPnHw9ACvEW9KoVjeR+WOPE8Bov4ZSGSMgSy67Ot6blwbsot6mZkOlhZnsD
	 nYLLYpCAB9nVuBYSjBlnxMS51YfbIM5z4rxZQndS2x4Sp2WQQE6ul9fEG+jYLmcWiR
	 O+JAeV7fyC7+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59299ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334345335.7869.8263509930786675551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0d7e218713965f94a0a4a9f50ba93ade03745f2e555c99b9424b66aba79bdc
Date: Fri, 16 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663343453
