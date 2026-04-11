Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2E21D5CC9
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775944054; cv=none; b=N2JlOqUT/aJqCELyxWoiWrWoxMR0zEAbSuHsNQ0JDGoiMgpBBDGAnWFCSvy0tt17Cn4D1kdS5P+3L1sAarFtHw4wDQdvZ+lKfjts7R3IPUzCxRzzDq6i4TsbP5dyJoYNNR8w8beZk78oHw/IuX29+02Hd+nLkYoTvisxXTVAAnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775944054; c=relaxed/simple;
	bh=hmto5YHkQhM6zQXs9rjl46cUIL1fujYsqspWzTnPO+U=;
	h=To:Subject:From:Message-Id:Date; b=KpYcqZcoEWmu1nBOAOjhWg/lytQH8gwvF16OgG3sFaUxC2Mdi32I8IBV6+qjPQVJ4l07Cc5o24DDnx/67rJVb7rPo+wPQQbogAzMMkLLKZI1pResvKOjPDaaE1i3ASQFbzf6q3OoocQLvC6l5PGMrF/JC0PQdGZ1I2UM5HggLPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsdwPjkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsdwPjkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C61C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775944053;
	bh=hmto5YHkQhM6zQXs9rjl46cUIL1fujYsqspWzTnPO+U=;
	h=To:Subject:From:Date:From;
	b=dsdwPjkzNmQASgawgn7sjq+ZW5/Eg9DKV8yIwIBolTyQT1+pnyHncIORy/VVEWhgg
	 KHcFu/FAi4C/xZT2tr+l7wjUUYsckmovizPa52MNWU18P1IP27vefCRbN4ZcyY9oOj
	 FkEPWYQ68bKrMGx/nUK0YCFCzhZv1P7YAh1L9/ru2el/Q3bYvlcOU2qqJCG8x0IMeH
	 hIaO7GWGo6Viap6Xop2idg/Entn5m0Zebdqb8bdK3k+Jtlb1fDlBEQ4Gl9C1irpagr
	 GnNtcC9uehLJ/bZYMi3iK1MH8cuv4GPjySGx7LThb3DotqHDjYfklVHF9733oeK245
	 ZLbzoFmmJAqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBB3F3ED66
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594405368.29410.18187396701856659081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15255668607d353c02a54c9667ab0352a5871524236c86d4fa8683c40c1dd212
Date: Sat, 11 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775944053
