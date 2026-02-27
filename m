Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC342D46A9
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772162693; cv=none; b=O0AjxC1HW95SNKNkTR2YRbwp4DqfLGOIWDCUwQlgrrwseN/HnHgR2/BZM6fOPDCqz1zeDapQVRvS8NZBcqR1xDXE4kGPAooajRYDH85bV3Rg7SlMmGqge0EZh+KsbWnf4wAXoj6vSvsbk56Yvkk7gdjmCVilnIslWR4RH3GhhBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772162693; c=relaxed/simple;
	bh=DEsalMeAUHVEU587VoHEE/vBOB2XFmYTnKsILpOUPpY=;
	h=To:Subject:From:Message-Id:Date; b=G+QBlwcj/Ix/4/bvW5tduMS8WYKP7lz0ErUXYHjrywPeuwlPY6ljRBcyp1AS+vg9kxgHZVkqc7L/KHjjuDVGagoN1OivqdBfpHAsuYvNGGif02HKJXSh2y9l8zzJTscmNSt1fumCFh7CuW04yO66pfGbZRMK9MVoey3pnlsYSvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5FIlWcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5FIlWcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2591C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772162693;
	bh=DEsalMeAUHVEU587VoHEE/vBOB2XFmYTnKsILpOUPpY=;
	h=To:Subject:From:Date:From;
	b=H5FIlWcZXsjLHcflx3IcNkyr9PG+aCed3WiG0jLX8sKQBahYN38kLKK0cGgfYcmMe
	 D4YWG3eWuTZr3NimiROzWcS5P9PSVPptW09LX5gv7y263BqIQ2R+OX+i14fXjq6G9N
	 Kp39aQUDcKmSn1Y9n2JP/vCOzaq1JdY/vG8xuzc36AjSH23RKsLdWDnXDRTT5vkM4M
	 A9ixCti4U27Q1Z9ofO5SCpWmxnvtCf5XQqG1p/vmyvW/6UY95fqHknLNGGULVAJqVf
	 qUPjTR245P1hnJkAUY+y1S6LOwH5YcFInFxzoTfzU0SlFkkGnErQgaCCLv4cT/LRLI
	 abuQuRA2EaFIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D8CFD9E34
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216269358.9130.3637227594407375048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7553188a89b609b77485c86411056bcb3d10b038a73a235376a615b0dad081
Date: Fri, 27 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772162693
