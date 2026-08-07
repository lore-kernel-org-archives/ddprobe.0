Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964F0418344
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786102834; cv=none; b=Io0AXZxid4721+R9G+RBO+ke7CVuSsFSXeXpd8C7P8fURocAQfvw5kr3QcAcULg560hhDOVD0lWvCwfY7bQYT8jTPY2qwWkhriB5V5TAmR6oRs5iAPNXTDYHrPYrv/sKtlhMCrZ+DgsuXjWr/yoXuT+pAl1a7gwGU2z0Y5LdFMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786102834; c=relaxed/simple;
	bh=5e7+Ealjs9cAI+HLjSLgYtqXtJEJbfYeorIWHNlI3ZY=;
	h=To:Subject:From:Message-Id:Date; b=lcPOXe2sGIju+oaZWZKcTHTtnmWH9OdrJeI8QjbAV8b1Fr9932g+ldXgUPps3jsyLupq7B4f2/AijPq2DXK7AThG7AbgxA4G8NFUn6ebrBfK8l4TZ9ER9z9NqOTcJb+XTsMbHQ+6FgeeNNxaD2pkdb0bM+vOYhygr0yY55LZdOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDTvsH0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDTvsH0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C09C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786102833;
	bh=5e7+Ealjs9cAI+HLjSLgYtqXtJEJbfYeorIWHNlI3ZY=;
	h=To:Subject:From:Date:From;
	b=dDTvsH0vyxHKjouZKznZ2bSNe3SRMARF3lTryf9hHZZH2gt8LcdWqm2dhNkCJXW0g
	 fSm+nEfVjb1ltRepkDRJhyl7JpnWZ2cO51clDXEglN2fmcvzSX+ZrUCzna934zbSc6
	 FmKNjvCSTww2Y/eJfznxE2wm0Vwja7mPbiq+FzZw4e2zeuaHiUvIcs1pR5niLxbvZk
	 qrw5AhvFTKRpVksHKXUGY0xV0tdcC6JUPtAWcwYCHVdH2viZGtWpENFqGu68fdq5YH
	 T6Ch24pbkggqOXwzIv0lUciXM0KPzmTUNcBdScmncu9Tl/sBk3POk42vQXEFesnJyh
	 22JavpPW9Ne6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF9CC5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610283369.6568.1156549362334757633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491896fe9512a87ccaee93b25f1a0cb8e5348b3d0083b088e6ab5ff3db834a98
Date: Fri, 07 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786102833
