Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF551440E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB0DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664293253;
	bh=lZ3PGEJ7EyjRBpwRM/XnUmP1Hn3nvhHKkkRtK6ymtDI=;
	h=To:Subject:From:Date:From;
	b=MaEeN1l3lUF1tkJLuRI8E7gWDkT4abz4SHC/SAVEYn59jk5ZhLugJB4Grsw4Aoklm
	 Ibx31zyuEqEoftxy8nko8nJI9Np/ayvDFzysjkMBN/FjSUr89i7tCS5pIdT/tQA+uL
	 cl9hbx6h14OPRfKgSIuLTCCTgS6vd39SzX5tf9ASb2uybh7Yb/IjtUCQtEIAPGzbAP
	 WBkXMtbEARTTKySOCRbJWI8c82TFuhYlIBnVshmsPgt72xHgh/JnWi3oOr6tjSHuXv
	 bF2lalkTfbOkNRp0X0N4go99UZGx858bEdsBkJ12b/GH4BPuO04hwFNS/4FqL86+P+
	 T17803vGwjm1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5308DC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429325333.21496.5898531186379935625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611b81b7d2e240c41e71d3a4885be656167cc95cdd5a0b9099210468109faf91
Date: Tue, 27 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664293253
