Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3C23FBB4E
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779373834; cv=none; b=PY/1ncE8Ig128MJknoZ90ske9ms3VUQ7SNKdSVOBMezHMV8xYV+Lh1S1XEYncVTRpCUGiWnCKwkWMMR/RQk4XpJw1WQmTqVmuPuL2ViYjCnevLnIAiVlslG4DJ2B7BB7gshdhKMPbhwTX8S0KXfTB3vfTbndysWYI0toB9JPKbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779373834; c=relaxed/simple;
	bh=ZeUH92ez34k/zfnZqZHU9pABMWH+Vhs8V/Gpz+Oa8c8=;
	h=To:Subject:From:Message-Id:Date; b=nRo/QJAsjVPNPN+WiADMLXcfINeGNxgozVPPyEN9Uzp2uBlcYuXAEB9CKNdi2zU/maB8c+pHD66IkpMEQvlXlaD71IN2nhYa6kw2GrycftCUTwyRR22BQtw4K23G82b2wASPKkg9qBoSbFaisKUBsdUMlOWQdQv3iryPUoiCiwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhYs5rCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhYs5rCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CAFC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779373833;
	bh=ZeUH92ez34k/zfnZqZHU9pABMWH+Vhs8V/Gpz+Oa8c8=;
	h=To:Subject:From:Date:From;
	b=PhYs5rCPJVNDeSy1hBGmQkOskG3FLhs4dMsJimvLIxzJZxZczVqyR5jBx5wGYmNB+
	 Jn4o/exLw1JwQApZIj+0JdUBgatnZEajCEgmTI7bgDHTnJDVrdZjjey5mSal0QoYCD
	 qIyBZ32Tej0iECsxeqT7ybvUUa7Gnfq8Gy08hCv4EGn/1drZhMCux4syIAWeki64um
	 ysrymsz8PEWRs3NDBvj4aJWJ8Uyb/4P19Xt3Voz+fu2hWJLLUa4BEknNSMWnbb4tU2
	 zm3LKiwwreJOukv08GH56CDYmw++Y/cNO/qO/35BDn9sWf7DQIRZWIvM2ZCt4J7uhL
	 40cruIa2y3HDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FCFCD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937383372.9216.838355389691496422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f19a961617afc44f4ad7cfad0d7f7c05b502a8a5cb0265c0dc13024f01dc91
Date: Thu, 21 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779373833
