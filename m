Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBBF2E6CCB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766582634; cv=none; b=anIKdoU/mPyZMiY35JaFoc3MlMPEfLQol4r6UTCE9z7GaeLeLQDyKF94UCn632oc67qQ4O7Ozc/tN2cFTUMSI4VZ2Aby0Xk3DRaYBkEO2WArbli06GWhYwX+laZfKNJ3JBFj1wNrZIkrZqt7+zKZhgi9iaPifpPtj9hYqC/MSjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766582634; c=relaxed/simple;
	bh=ECZ8BGL4hJhh3L9qVOUPGBaX3xOoZkQrFy4ga/0DI6A=;
	h=To:Subject:From:Message-Id:Date; b=NPkcXqLN66f2piBtoxbB22b1ZM2sW4aDvjPZzCCfYAaJFhDvbAVbgG4/2QHsiQl8OTPEluUvkFTJ2rybRuw9LDW00wERa3G9b7CrNNF5fSzDuBRAaSM1KLbo/H9zpJKH1dh6GZKHxoByezW+AjVrJVN+MmNv+jXr7re9P67YKH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuqiMKRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuqiMKRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76CEC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766582633;
	bh=ECZ8BGL4hJhh3L9qVOUPGBaX3xOoZkQrFy4ga/0DI6A=;
	h=To:Subject:From:Date:From;
	b=VuqiMKRt4midphxwMrrm1bz4GqHinh1KwWgkaI8I1ajXEnHRvzSLVxUAPm8XscAJU
	 W7ODGLW6UJbooIVgXWffpPOx5VWXAfbeMkcu/FVA7r6Cfb1RpFzKgGRp0cDD716qxG
	 yV5ZjFFycmat/FXyOjfrYIPpvz4pSpGxEtmr5ooq0NNXZ3CdoZn6SwsIS+rx06gR86
	 VB2BJ7QljvDmggVSgPXTe4L6WQepYiPzNa/JX3RPUl1X09k3/fV6FytnQxipadgDgi
	 /prQpBbBHHRNc7jEJBL6rYICM782Zb1vkLgqANxTnhqQpcPuXqxAi/xbHkFrk7JJOm
	 7aR/sjUZeN0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958CEE75453
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658263358.32422.17480666115577833233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d57eceb60c1f69b896ae3a4a1bed7358478613361c721d9524b256dc4792b97
Date: Wed, 24 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766582633
