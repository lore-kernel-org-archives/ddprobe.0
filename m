Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6D1156E5
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 10:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIPvOYxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66D3C433CC
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 10:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696589228;
	bh=jahUdSQTFdPw3XQkWZmhFp2Otrt4KmhfIrqyxgtNNZQ=;
	h=To:Subject:From:Date:From;
	b=WIPvOYxApOqsZ60dlQTantA4BKlwH13gKfDiJeFGWwAKk3PfPlrr18vR+t3TQp9s6
	 mo5cQ4ce/En1w9/LazJEhwdCBNW6ZM5+9wWYxXvNlkziVcVpR0Qx6XKPG/08/0SxcD
	 Cl81pF3x21qStLivfg6+DJKQSbsXoyEBpVj2So7Mk1lQewNybNYjOjOKhEKFj+Qc0v
	 TP7HyUP1WzkfkxdxTMmGvAKBetS7M91uAC13lRYAxiBOiYw7fH27WaGyVGJEBkVxVz
	 OHs6nfc71fgYCLZHAo2ysYLwcDFpwc9qUHIdPznXjuQed0LyR5rI8yL2KViTblpL9Q
	 IgP14m3tsFWjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC216E92FFE
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 10:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169658922869.15675.8951561706619654466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47082d3a105f9a31c670c6d0767cbf7063d481ba8d10ed2dbb3ea144f6209c07
Date: Fri, 06 Oct 2023 10:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696589228
