Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB13C20E1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA78C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666392053;
	bh=qi+SVlJS2/MgERTRAcoZSfkpcbN7cE4hjAbxt6ZGbbk=;
	h=To:Subject:From:Date:From;
	b=PcSGDOOGiSy7HpMCn4FwIEon4CTM8mMNXFthtrPFe+zog2QbwSRh1tR388J54qySN
	 GMWVtwUWiFKh5Q++WTTAkfTC964d3Se2Qo569AvR6L2rni0DZlwldNijSQKW1ehldU
	 Phpr1PQ1fwePotPqooIJu6tnDHDtbrAdpucnWd4VAWEh8CG80hl50uvh1zxScfGCdD
	 x2bb5bsKMGIv8iPCN63/GO5ppczp2yamYw21JmDuprT/YtkNj/kazPuEqyFHQbzMLX
	 fJoDxSUwB26mfa2PYDeA7uVTPJz1GIgNb9FDm8UC1CtPB1Xh8jhJ9JMEU6PL6nfr5F
	 ceuYOOaqgJ3DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A27C38A2D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639205332.955.13096098142248723801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0943673acd387af5ac21079d8124c3e026581f9321c0b9b9a72c2a75c0c553c4
Date: Fri, 21 Oct 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666392053
