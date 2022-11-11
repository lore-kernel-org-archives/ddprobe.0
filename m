Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA2624F4F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75FF9C433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668190254;
	bh=9q4yxp5pyMONOnFve2XXzeqGuiyvliBVBnzF8/Vfczk=;
	h=To:Subject:From:Date:From;
	b=glVBwvdm2HzusSVUe1G0ROPn+F0yRUQ+3yXc8+oeIFSwPJPyPBtwxmR33a432GCOQ
	 xZ8JV2CznBzzIRZMMY1G1wCfQ0tYrdL1sumigVzdJUysBHuDfjd3Q5bf8qcJGztjnb
	 KIWoYJCz2851+mKrW6PrmjxLSjhsKDiItMQomr/yEGHC9Iv7nQv2ar3o5JdId/5O6F
	 iyKItRsMCJC+M71+cnSA6ALT2bEN6TLVeBp68T7gHgHpTdKeXCuHuhACsH2CODGWT8
	 4oTic1EGDtGH1w/+TLbHmK77B5tp9g0hPMwYyvkqpG9LWOIgrwexghiMKovFcF0mMv
	 WOoEkx+kYJqUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59ECBC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166819025435.22635.1190159207203075641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2c92b34bc04b4385e568a775b1ec7f97d339cd23ced90cf8cfc83dd8eb2627
Date: Fri, 11 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668190254
