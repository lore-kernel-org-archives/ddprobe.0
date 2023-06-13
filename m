Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5CC361
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 05:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB909C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 05:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686633966;
	bh=dUWRgY/3Iy4gyPMYmSSCmAIqLHkvkudIHqanldaoqC4=;
	h=To:Subject:From:Date:From;
	b=Mn0pi4sytRqclLS7sfOaYoSrapCWW4jjbs2kAYAMYwjV+XeILqPp3NVjbotmgebCB
	 qApKHd0YhdbCdmCoV6D1cNr3RaslIDpJE4Pq8EHb5s2891jbN1IdCcmOgXnsna8NuB
	 dlH4W7FkUr6/OSiNANq+nxfnG303DVmW4QrJBgll8LphqBJQs2croF6EAiwK2/YCR9
	 /KSk+ihgqELCv2TvPoF4mVNXCyEm7hlGwsdfpA+Ed2xnOVFoGOM4nBl1qB9Vl0ASWW
	 gTELtafFlfYKoz9+f3blyIrAkr8zbNEa4iF8+tzR8Btlq92VQ2eI0lSIzu51984u0w
	 gRU6le0lnY9ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D4DC7EE2E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 05:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168663396579.16350.1611553242682154670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be38207bcaa30f4fd21bb9cd5211b517fc6f8aa1693c57dc3d74a5ea181f9922
Date: Tue, 13 Jun 2023 05:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686633965
