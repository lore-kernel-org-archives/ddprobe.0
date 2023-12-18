Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A4549F66
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3dubs8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C121C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702902496;
	bh=b1MLtWlVbXvSzMbqTu15Mbne17bDDSJ0xgxUF4Z08ZQ=;
	h=To:Subject:From:Date:From;
	b=m3dubs8r+psIJ+9ggKEh2ehbL6aUjdzFadd4NzL/e1nmYVQV9IJ3aGWMb1/2iLfpR
	 pmi5nH7CEGgdLRGF0f9/VbcfUfybD5YyTVZhrvwYA/9ro4wRptujPUUslm/pUqV+a7
	 BVTPWq+ENKYjRh/MejxEEKOabxG57kvX5b6TCSc6+7aEz5kDoVepwRRKBMOAEQpeMt
	 XW1YtOZ4a/0A13Z2D/FwndP/g9cil4Tl9UhBlm0lhD64pWD4TaxNIAXZ67iJWuD08e
	 yBK8aLeXfp1w/NggaZHMywK34Q8f0bGkyi36Htle6iPkuPlV7npkUV3zWRiEIZvmBT
	 qPIkXx3VcQJHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 642E0C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170290249637.16073.9980649457751656839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63cd8474a8893f57e656aa34596f80ffa1d2815c6d1e4d3430deb3bc675dd6cc
Date: Mon, 18 Dec 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702902496
