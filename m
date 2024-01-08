Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0410014AAE
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQttaIl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80895C433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704713896;
	bh=f0B6xmr3gXAAa2ZwP1Q9O5pF0C7cJ/l8N9kddLvqZO4=;
	h=To:Subject:From:Date:From;
	b=ZQttaIl7AREeMqj5pWstopcCmfZHqDOtv+sAxY/QDsEvhb9i25IAhIjDNUEwy7CJI
	 JATY9bGbRwPcOSA75FUs63SMReuGvY57QMzZ/XyUrOzhd/h5Fn3dOhpxdkrgN1kYIT
	 yS4W0AviEpqpownAgpbCtEgVIZlroMpBbwuIgpaJLzql6TA2aInclBF/wbf/lKklbs
	 9Dn33RL0pDHkeLUNf/0PH1+DYdrKj6AsxEWxjWeRiyP3Gn3F1QUI2k904ATz6RRLh7
	 30L7XVtvO9tu0lC2sjtIpc+SYKKgjUwJ7BiNZg/G4ouF4a4QemZHocBZS3nz5evMxu
	 hih+alkwb0T9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669BBC4707B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170471389641.10325.11376513201771682665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610c30719fd422f973b3a004732b48154f5094b6ab5487886cd1c69b5291e6e6
Date: Mon, 08 Jan 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704713896
