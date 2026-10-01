Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766CA372EEE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790817634; cv=none; b=VEu4p64lWiiD2DfpxFGPpnE1XkcPwY4+d51Fd5VFTNehvjXwrofdvg1864UEnYvkoUCyb0vddUcR/ACOU2EJQkg4B2OIZ5pxOzDrnzgauUP7w3m5Mq6eEpe5LQBcKWYN37+RVScO/xyQhcBqYqHvXMvX8TXXtL7ZOnXO2y3GH8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790817634; c=relaxed/simple;
	bh=FjoW3GXWTRhTNlOBLbcg5kbAYJWVGFd1Xb4rWItdzow=;
	h=To:Subject:From:Message-Id:Date; b=Jt1EFvb7r3Ich9yxIU+qojBAJHea2ARntX50rpU1S0f4iJURe5JK4pvzZqOY5QY2H/+WGWfo/0QJuW/lQoXag0POCk+nxGo0A5bbUTRYcGuis7C27XuJ2oFou+bc+1GOxBK0Gc3gmt5838IwP+dTwi+9GRARtWAx9dBJ5QV2D0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQ+nKJKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQ+nKJKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D1FC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790817633;
	bh=FjoW3GXWTRhTNlOBLbcg5kbAYJWVGFd1Xb4rWItdzow=;
	h=To:Subject:From:Date:From;
	b=HQ+nKJKUVDcGJN3tDCuYo7NNdel4LMF04qvMI09FIK90HpmnzfK8C4YMI68tvwQd9
	 ISvbe2UOmmVv7YgNk6y+OnwjDw4LfIhPzEQFOcc4OfqnVLGtnrRhnWJOkU1vXCqMZZ
	 8kDVKSO8CVSLUi+SXoiHdtLa7l8UnAkK5BwFpTboIagx5b4yb/0Z6SlnInUkEnHElA
	 seTHKSwcVCFpJw/wDBgcxKjA+ak88NrV75JWH3u87jCNK5zIhlT8T6V27yJO+eiCJ9
	 h8Vx+IbIosVEvJ56xb7ZollIClQlUVLwUCiZqsFrn4Htm1ZcNuRGvw0CcyGfI9ABSs
	 kaqspqpTi6V7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3F9CA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081763369.6770.14755274733965793280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75dc76780875614249912875dc037a1293b61c042ec0f58987a71033b2e1eb2f
Date: Thu, 01 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790817633
