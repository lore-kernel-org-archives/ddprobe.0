Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E3C155310
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 16:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714752743; cv=none; b=ekXmMlzq8XbeUmbz9Pd7PfvVl89o//guRvccaQOeM0WmTCp2Q0K5iyMeNIpauPgmyGq0WpE8DPRoEopAZd6TQg+tvq6uPkuDGw62vRgoE/K9GQbsg1nC+PNCV+90Enjm3joHdV8Yov3YVqWBRfJFKQY2Yd3upYT/enhTa5x0ZQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714752743; c=relaxed/simple;
	bh=pZQ9e+dFhlrlqFnvCz4k1Kzb6iD+ppdqN7RGOUpfE2Q=;
	h=To:Subject:From:Message-Id:Date; b=W+/RPNwYr2frNP5qfL1Hmrp7CyEswCQWI/b7Up358oAo8fOsqwfDdOum8SdCx0GokGpOA4AUjZ6nV3Qpyg276gdv1Nvc9jh/a/DdOqt3u5kx6yMRJiR1EDkMDyse6XvbXHkdW9BkAt1SD7y7rsMC2cOj3T7/Y0sECEMseoq4hFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAkOcDpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAkOcDpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26F4C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714752742;
	bh=pZQ9e+dFhlrlqFnvCz4k1Kzb6iD+ppdqN7RGOUpfE2Q=;
	h=To:Subject:From:Date:From;
	b=EAkOcDpl0LzLPDpnJ1hF38AsrPGDTl3gxcYqajv3vruR1y/DAFh380EMzhc5twxYy
	 B0EQJab8cUxPzikAu54TqO7fr7rmQ9Rpuj/dv97tS1da50sBHt2sQfSwCvhVhGS6dC
	 ZUUOgdGSEdF6/67yv5Ek6/L7apIkOPN0wY+ZWPcirvuIjhkSBN+G7rW2cYJrot8JDR
	 Pt65tT1XlXxfLikx1JXm4ju60dRqCKXBVARjnPrZGbGKFxi9IWeDloRFshQGsQuYcK
	 eac9g0bZNM1OM55Vmp9ncDEJLVVMtn2BbUuuokT6SoROyf0FEwtvs8TGJSv35ej0Vd
	 qGwWDzNp5kh+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C065DC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171475274278.2486.1931877707836410405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae98f09ccb3499263bf4cdf86e53539593660565de4d2d36a6ceb1010ec6daf0
Date: Fri, 03 May 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714752742
