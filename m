Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16432299A8F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772170494; cv=none; b=FZH3VlaS+arPrF2W4CoQAwkHep09ZmargRBJ4dAW0QVmdXRhHdhG+ppOkaiKURanF/hfyGZnkFZD0o3qt9QIOsCX+NyF+2IX1F4oeAq7PXyWU1y55h7+9qcwKmuSIgCoZvP5CXZCSLBGAaXF+BvUO3toaEx8w0AzpQhKEudLsHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772170494; c=relaxed/simple;
	bh=DjOAxQMvOk07jnlHanB0S2dIAnR4Rjlm/UHqzfIZ4eA=;
	h=To:Subject:From:Message-Id:Date; b=tpnlji9GfKn+VrY810gT6O7xJIDYjvflHJP+9G+0b3z6k3dJyZAEhm1BTmofr6P71DJIjrTeKHQtYEr2SusxSW4uDy8jLRLMMd+W+ZIhSp0bqTbaspRSji2CUjronAwGV5JSTQ+bu3nnYlzHHoRe/XDl2xgNi0VzEX4iHXU7Zz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMSAkC3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMSAkC3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AC7C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772170493;
	bh=DjOAxQMvOk07jnlHanB0S2dIAnR4Rjlm/UHqzfIZ4eA=;
	h=To:Subject:From:Date:From;
	b=hMSAkC3g9h8Zgi1maT5Zr+YFvPgnviPz36PiEl6HMmDg27T4CE12hHX55lyCE8+Ha
	 4v+JPD0TqFdWG4M1QFMjkkA1EFcrl9Ym7Xf5PfdPAXc0LEVc3bp7L4c/1csqUYrAnM
	 z9IyzVTSXg+7sTPTxi+FfSGVfldwl0YXcGpxbtEyCT/mlU3D88wxXKXiqdAnd4nRMs
	 qHmP5t1SyCdIs3cQztboXpxZbdHKDR5k5blPF4zWD7wAQT68Id28cMWCHbLyAedqQF
	 0WVGYPTObwOqacfUsr5iOJtoX9uGwPORMPUMT7g2FTlFi1EHy/6Xa84MUrWvZ5GJW8
	 hsWgwGLEwCG7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C9FD9E3D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217049358.7043.8059861767100492276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7549e471ffdea13321bf0ce50958d0b8e2010685ecb1891fdcb013993270dc
Date: Fri, 27 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772170493
