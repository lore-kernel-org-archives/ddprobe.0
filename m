Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2573334567
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBIwOj91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86021C433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699401496;
	bh=YflqnaAjwcpw8wvq2dxoXIctZJny1jX2uT4NyEDYobs=;
	h=To:Subject:From:Date:From;
	b=dBIwOj91nIp3oSsR0YZ1h3jWaYvvam9kaph5VI2P6qgzqSFlPTVEpnbYai8gyNPUZ
	 U63RnOPVykZj91AWjjae8skDqWRvrTbgkPZlj8RdaD3QyhBdNgsJfsAFuDvv0QQsS1
	 VfK/+2uu1VU5B1IQf/MMzDM5a8+JQq17DB71UpLOalkHks8yTcbbQ321RNadGXsymk
	 pNPoqsZAw1VV0YQmBwm7dt6vJLk7HzVLVMcobgb5XV253lR1iP3BTw+DXizL+TCDs2
	 3s5tWzM/KgkhutKRRkaEdCr8Q3RJFxdKg+LmVC72mxZiIwccao55XjLLWPiaioKBLJ
	 iPHyszFDpNIZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AFC7C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169940149642.22401.11364073529118978096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9fa8b9083b93aafb515f7166ee3c13ed99d0c3f53276a9377841e8c7a2a5999
Date: Tue, 07 Nov 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699401496
