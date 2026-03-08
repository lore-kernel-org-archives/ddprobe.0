Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147CA1C84A6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772943894; cv=none; b=ntDEcX+EVeKNrQJU8KJXMquCt/s31VH4gBMV7DYHY9G1tp2+KOqwHd3JOhLizTrYh5H9x7mieqlCzzT8PHqB9Y3NmJ1fwXh0PrT4zBqSYEMz2ag+3o+hiRS/7aPYi3nPmCBS4U2ErG1u9oYtgWvqaVeHT2neNAJYDvLCBqlYOSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772943894; c=relaxed/simple;
	bh=FHXbRFmSFRYr4fPE+wXHyEHe6Bf3di2I/wFPEhEt1g8=;
	h=To:Subject:From:Message-Id:Date; b=hhPwLZ84hFuHWUr8NtouRiCNrXKFYWd0mAb+h1k17/g5ro3KkyW+abQXga3ye8awzXBRFRsjjGmMcms1XkUFMHnvyYbfV0Ox3oTKj55YhNkgm2x2AM/SjSdhafBrrozxhgWJKjCo+PeDEBGupK1rRRcKEBjFODmJQeB00ezV45k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcOVJF8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcOVJF8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1D4C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772943893;
	bh=FHXbRFmSFRYr4fPE+wXHyEHe6Bf3di2I/wFPEhEt1g8=;
	h=To:Subject:From:Date:From;
	b=hcOVJF8SS8u7R376UebcZqp/LwiH/krkbpk+NbfJXogGWwHkLF+fqzWRnPYlo9EiO
	 cF1sCSXuJ9Kr9RDTmBglOym+TuevuMUjdbXTkBfmwpCfYOOXrrSdY/I2cXEkUEaDdS
	 YXqTXR+0R7hk+JkTzloEFMhfbtt0b20HT61SZEgRTarKeBeyqXVt0+3hpI/pRpWpgz
	 mYIyy5SM0EtfzlF9BpU1uMUHph8GYIcdzgKO5fXUeYoNkg7HTC5eYGIbR05JjfGyYE
	 2Oze78rqoda9aaojC4oOhAz5YqEM2KrSAVpPLZXoe/YNj+ONT6QSzc7jjWIz/6zmFI
	 vZMKCCgt4gleA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB9EF55107
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294389363.9137.647239757992963355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c967e104688b0c313060a96509199f2035684c52ff849d0e962a3d03b9ba3e73
Date: Sun, 08 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772943893
