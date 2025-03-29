Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320812114
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743217794; cv=none; b=X3Z9To9mEFmI9rjVRP5iIsB4RnypPscFapcWTrmRYSj1AMGQQL/FsAZrO2CvW6IVluKwEZ6pxGSAiK5w7d33VGTmQmD4BjLE7CyDAyD9YgbBW2dCO+bEgl1y4q1KiG+vEtrAkByPSMCFfduyVu7pCPNFoN/8Nfp6CVC4VujHuv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743217794; c=relaxed/simple;
	bh=LKG715+S+dTazTBTvIcRD5pvBrOqd6UBK78JYwcqoPQ=;
	h=To:Subject:From:Message-Id:Date; b=E6dvYqUMyIEY6y7nmWyHKs3QSyOvThycyRftB5FMisaDsWIJElIGcMxJlH88x2E2X3ztr5Yp5lAEN7Nijbava+1Ng8vTip9pbYog0F0VfDdrxxm4PrQaIOlwEK/cXdEKvBO2WqCuZAuPOuKbT92YTCAcYENlshKQk5uk5DXR61k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0QXWoO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0QXWoO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA213C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743217793;
	bh=LKG715+S+dTazTBTvIcRD5pvBrOqd6UBK78JYwcqoPQ=;
	h=To:Subject:From:Date:From;
	b=p0QXWoO8orW/7G9SITVcX71gcsTQR3wRSG1He+2nGsEmJHteRxA9R6pN7yH4E019r
	 4I5fmvqw7k+JXsvfuRw1L9DEv+d4eGHnnwj0DrWL2x7dbbq1hTfNSpCdHYbFnxhsHt
	 bwFxux/E2h0cBwDa43SKKlqn7+cwsMZVfY7cZHSAjCaYccKoACpG4nCXcUzpH1A8Yu
	 3o8GGmKa+KxosvN1xlUWdWguf/g3h0MLaD++3SYlPp4/cWtdkl7ERHbcsgX+Jqtmpt
	 9FnNTCnIp8WuFGf8deXFx6uBlJ+rPYKS/UVHUngW2sCYSbLgpswvkjvIlwKjJKXgO4
	 5ppyhQpWS7s/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0BAC28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321779359.8944.18173889119770697307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4253b1fa03c833d5532da729041babf2574f3e0db941c4ec22211811ca2fd9
Date: Sat, 29 Mar 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743217793
