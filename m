Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634448C1C
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 19:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F380C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 19:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677009006;
	bh=EEPom36E/nUlzmj5Tc30jkyOhVGs0mLkPi0PrD1N8pw=;
	h=To:Subject:From:Date:From;
	b=oFQJQuAkaTeEL6NQTpQk1KspLD/DdPETpwVwTCBYPyqdl6NFhxTboaoIwixIF0Abo
	 kRLlAI8CXOROLU/xaj6EaOisZvdb9aIkFNGDv754fCFgVAWMUy6UUuwxgLWj/dXPyA
	 Prq61/YECRqsshA0Ck+/5nMtXq31IRrj2X622Ib70fax1cy25SZXfVgdcLdrTv6AYC
	 xiXoPQxqoa0E+recY4vS3SoG6w4XGEi0I+biMBXn2+tM02/Rec0w7/9pge7jGHfmmC
	 izxPirSbJcPDmPpX+JfJGTG333I/gMnogWdNQxqu1HzRGR5cXvqeyx/LksMd1Zddwi
	 RJ5tGfGPcPSDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF179C61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 19:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167700900583.24125.5814213226207563541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b14e2c95900277fb7cb938341fc27f3be84b92936d8addaafb90886a4f64b8
Date: Tue, 21 Feb 2023 19:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677009005
