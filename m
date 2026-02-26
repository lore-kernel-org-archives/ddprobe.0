Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1721837416E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772105694; cv=none; b=D8o6bAjMWkm3RyHKKNro7yM6IAg2c1bL9AQcPxtfW2O/ILD4OTTyRi0HAIsyasOaJdMW8mZgPrTwApo27YhIawNzbmlewN7yBWceYhjz4lqXJa5GhbVWsFzSZkWT0Gvnk8jhYk9oWzT9NseEaDKj0+lFCT2Rg55R/2oZId93Dp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772105694; c=relaxed/simple;
	bh=ncnfgGurwxrA3BTF6lzj3G/9liZ+2ElWOCk0nkGlycU=;
	h=To:Subject:From:Message-Id:Date; b=oBuUdBBU+AuuMIMWk4BOiIX8s/DvKdDpAp+Vh5s7T0eZpH3Fx+oyC7Wd5uIuKF+BrfBuYZXZXhj0UNUAKZon6nJNCdJ2nyn6S0CGl1XRgCklpY8qEorXwcbMllQrZMU5C7CDuvnDVoFdWkOhe2A49JBPIsEDeImn74ClO+UM3pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4ZPdDfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4ZPdDfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5C0C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772105693;
	bh=ncnfgGurwxrA3BTF6lzj3G/9liZ+2ElWOCk0nkGlycU=;
	h=To:Subject:From:Date:From;
	b=i4ZPdDfL75kaIdK8/Fyf92yVXeELpSg4svNtAfx+nclrESXpe2aTY9waourkgQ/Rr
	 8cM+rlPFWJtmpI9oLse3CB0r4pGkPnR6UlzhyhWYjW0ORFngpe7zMvt2YfnSYTR0Vv
	 Nz6oWmj+aRuL196bzq7NdyGzXgknNPsOcn1lpKl8gYUj717IipBmEIeg2Xt19L7teD
	 7phFYUu1mz4XyfSqTIBY1GU/8ov+21IDRldzCkqd3tBPU1YIPtW8575PwbSA7bcihv
	 WFVX+S2r+aXuT/XTpY3V7978/vRyqMp9jTBpXBqIIvXAL7wWzZuBbHgV6ILzilftK6
	 hgA4wrViKL1/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5D9FC5933
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210569363.22476.5972251476445617334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfcbfaa93b180b0e59a091085669846c0e829f06430b055b1988994398255b8
Date: Thu, 26 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772105693
