Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC8D390C8A
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792393834; cv=none; b=qLl1GJ7qztPxVOM4fEbcP8C55RCnv9hXFUgS6uHh/GxRqepRCbhC9gSY9JDcR5PfJCOwy3jzV9Tu7WdZmDQ9UU1adayMCvsaXHC3GzzoIbXkFJmzIGmgCwI83LXhhH2lCQ8n67OUK/s99UWjctcW5cL1sOO8wqRBnUO+Ij7s9Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792393834; c=relaxed/simple;
	bh=Y5Mt2qhnqX8lIfk+vVp1EGmOsgqz0zjQ1+S9dYMyNYs=;
	h=To:Subject:From:Message-Id:Date; b=tlcPQj5crgCIuR64tDBfuhwpXOnPhJjEbkcL7cTdtqgMfsHB3pjE1k09SL3bvwsiMvR27GGOLtMbcni8dTJ7Rkv+UIns/xI1SUJbhSqxlh4w+1dNFDgfzos38U96b6mfmn8jHFQOmDqDWJv1OgMWWnWIOX3uhLdOy6Dtr2BqI+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPN+y3Oq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPN+y3Oq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E00C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792393833;
	bh=Y5Mt2qhnqX8lIfk+vVp1EGmOsgqz0zjQ1+S9dYMyNYs=;
	h=To:Subject:From:Date:From;
	b=LPN+y3OqV8VB8iXz7zdu1LeauAzu9rBCIMJqtIGaMpbU19n7dSk+WHYsl2/qaEONv
	 K+i5DbHS7iKVMQjy7qoanwOok9dyKDelMe0sAW0RzBP06cBEIDz6Mi+IcPRIZ1IwVT
	 VLSXhoX2BQ7Ii2ZnamxAttEcDTtFBwPXMbsPoxRBEUwjJnfe4H6aRbKLB0CVsGWlSM
	 KX8Xq7hjAr0MxmYxEZWeuWqqj8HAPvOOMzOxbKia226rVyFDNwUrgs3ZaDmICMgMZ+
	 aRBtApUy44dh46YtA4VLqVyKPdv2NDMdbfUKpkosBgxszh3Kn9VbSoQ+5dRlsbb5F+
	 NvCwQdmNkmRfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB17CCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239383375.4079.7216022805462846741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904437db71562b8210df06cb74d1b548c2562350573a32ca7926f02de836fd3c
Date: Mon, 19 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792393833
