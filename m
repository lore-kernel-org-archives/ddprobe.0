Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9937623
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712712497; cv=none; b=clQ7VSWcr58kSW3bCERXhocbvdtw0VNW4VXKbF5a+P3qMTycC8DGwr+lprrAezIYycigZeWD7PjOhY7pVhH3xFNHspa9v+kxMoi4AavJWRxbD8w3P+kP2Vbf1oHuKBCMGTZI3NrNHIcudRVg2LWpuz9DkFOfuAz0ZgYwfvTz0CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712712497; c=relaxed/simple;
	bh=IxPRTBwn4lXFtCThS4oad/Bt3QSLvhlcCN/8nNN8z5I=;
	h=To:Subject:From:Message-Id:Date; b=O8v3Xbww5nq4qphX+soalKdvfed79V/X2Jjtx557EFisBQluqBnqFLd3Dg+8EsWc/6H7VrgN2BkOMfT+y1IAA0iDurnlYXW1BfladRFvIjiaKW8f0Ewcx0mELK8MvGcjwg8M3xK77xXGFC2dKTdgLbNfiyj/MKofe2i7uw5gTRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpqb3V+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpqb3V+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BFA3C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712712496;
	bh=IxPRTBwn4lXFtCThS4oad/Bt3QSLvhlcCN/8nNN8z5I=;
	h=To:Subject:From:Date:From;
	b=tpqb3V+YM0LYE/jc6lmbg496SuFJkbC+2pBXEiSGsGrhBp1nYPZ6ciKGNbe8dlmki
	 wifVLG4ovuOO6LA5IP8ucJzDl6WJb0thHrHNrieXA8lTjavnz/RWPDUT4pZ2iM4itW
	 OzteMJ1cUfJ17RYcHo9d4FSMh+nGk9eabA+ApGwPoWRG+qPtgbwIvrj0rfhp1ZbuaD
	 rbNyRVrR/+dNmU90rjJpuoAx1rHHNrLwRCiz7Ac2IoBc9aqfHe3nvnlNAmClxnphPQ
	 9KY+lDdtPx0BtpjxciHNITv+fwGLg3MTeE3P4VBrCn325nCcV3cPunlHn/yl2aW30s
	 lwTkCrKcNkSuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68138C67861
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171271249638.5634.9506535856963250633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c56dc12b8b7e656459a298505508b4484aebc4d538f7941d8c6592063e2901
Date: Wed, 10 Apr 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712712496
