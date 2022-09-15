Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FBC4C91
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72520C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663278653;
	bh=O+CrFyShEtk1M/qmDwpk16Eo40SNYNSLb4V9y6WRyLs=;
	h=To:Subject:From:Date:From;
	b=mY9SNs8FCPclmI1ObLCTz6XdgoGjr4QTJP8SSRTCydTPfM6z6rsrHtYg+7TMq+ypQ
	 acfLw+Nq2aDeCi3J3WSDxwcqNbuwrPWPaZw0HZi2AtI+1glNmjniyi0xhr8DbYxvf0
	 gyEqXFs3hEq0vCqWb9i73weaZm7p1hV/6Y0qUFeiib7XnG0u0D2YwLdDg1ijpz1zDk
	 5tDfghHhvEsN9lzsk5t2tkfxcbf1kpXhsoK/1mrRAP58EJUDlHGgDQlOaseNy4wwWV
	 1+gpJV3nJ0RN+8546LrXCiUpo+e5DLBeYSILcDB3FpP+j+BjI9oRuBanraAlFk/Ehn
	 Lt9BWE8/eaONg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54BCBECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327865333.11669.7344715505670376933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d358a63844c7f1e974a285b2d417b5bf0a9bc9e211f57ebdd96e56128141e61d
Date: Thu, 15 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663278653
