Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443AD38423D
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783485514; cv=none; b=tqSikCXreeWU4MqtNvxrmsaJ/Iyg8LDmewNoywX2FqSfluGO6eQ8WTB9Kd4NaMj/5ZKxQQUp3KDW5T4m5h5ZOLy8+2YX0c2pDIBjiymlghhUZFrRuVA5ubExsthpf9Gkv5eMfYvTaXZneXEgqdELos95l5MjmvKM77Cpd1PH7bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783485514; c=relaxed/simple;
	bh=0hMepfv0+Ms/EG7jkewk31228dDOV1IDebYMKGF+0gA=;
	h=To:Subject:From:Message-Id:Date; b=HtUOuZyaP4TKIxcpfW7XNPkn/tqYKfx3W3xmBBLJ3GYPvvxBuNIHN8Tk6KaDZq9KoQuiZkWBG3UmPNTRJ9LDZi1Noh+d/PxQm3L/LTbJ/BIEBEExPCYF+TgA70z0dn4iShYAPvuDEUQRD9OEnZU3KEnupZc4lXwSFozG6MqUxCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCC5OUGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCC5OUGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E6EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783485513;
	bh=0hMepfv0+Ms/EG7jkewk31228dDOV1IDebYMKGF+0gA=;
	h=To:Subject:From:Date:From;
	b=MCC5OUGzd9pdfgHSLdFo4TltKGtW/UQmAq/N19+0EQZJ2Qj0uxSvuOsuyaKa4zDtN
	 354gS8H9DKyavBQTKV5gV4PPZc9V4eqggF+aSSLFPcNXR/Ad4Z1SKq8gdEHNPV6SGF
	 bxaFntHpAIiy71gPlUFtyVu9aQ7/C+f1tdSpbdIctJq4l0qqiOvK6psv0/VWwhavXo
	 SW5bDRqCKRZAlQAm4e9o/fafFUL8pZLDMirjTKaijJMqEE4+wOubdlFSUnvpJuN6nG
	 PcIthz4SIzqiwLfc9xjq4ZmL+YikCKXTFMo8IX7I9LCNb2gUHdU9fXCl/b1Q++9L/0
	 FR5nov4Lil35Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD7BC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348551371.14593.4576466609931799081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42082b25210ee5ad622a8faa51861f2254069c95dabfdd0fd7b5368435debfb1
Date: Wed, 08 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783485513
