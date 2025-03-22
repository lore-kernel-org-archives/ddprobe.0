Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B862222AC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742655594; cv=none; b=uKULIb04++YhCb8yykqRoWfrZDIZjFBqJIUjTYQsuoydlY06Ap+EbL2Z90yPLy08Y/KhPFiP6xBezkf+F86y1pR7pdLtHdNd4BWJ+Q9nXC6MDcJtgdcifsb9ZFr6OMpn1PgAGRyr9utDUDiiRsQgGfXRaN/30+CbIEcWdSJOB38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742655594; c=relaxed/simple;
	bh=POtgsg3VJ+4SwubnAcVgo11QVCQwqANpB+kpfQBibVQ=;
	h=To:Subject:From:Message-Id:Date; b=dNq0rRk6vzlR4I11JypWqT+jHIuCcfnYmZfbTnYETn0+CC+T2ooSzB1k/w5rq4YAuHRT70JPKUbg4PPqXcvPFZjTZhl2Yj3WfPtqGCG+RD1Gn5DdgBmNyw0p030RkvsYCUh/so52J1uCHC/W70weSULT+xSigYN4l/DehSCdSG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHi3WHPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHi3WHPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0946C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742655593;
	bh=POtgsg3VJ+4SwubnAcVgo11QVCQwqANpB+kpfQBibVQ=;
	h=To:Subject:From:Date:From;
	b=CHi3WHPyZih8kiAx/FaLXjKDzIKHf82Qt5DEx48dNGq4H9VpqgVBhWX3vrRJgqHdf
	 gejdX99YX/R0R4JDwtvJEzix8pTR9Hwxep/QIX44a1Y78WQeOvu5jzi02lHNveihi6
	 0pIYb94Lb919XNcD+Qvmb+fxmqRii8WHtAba6JO1mX1f7UKiMGGuCOD81BWi8X6t5p
	 OPJEbblq9fbD3XZB5/YiUQXJsYI08KdSAtzpOBczFuBjYZOj0z4Rc1mxdhdkxJ0Taf
	 z6zF6Pf+VuxhNwdUg6Sw9wPiFKoeP5gqdh9AmPp8/hOtHDH51BDUFjSEAyTDGPkcIu
	 PZW5f/pqTG9Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2D6C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265559360.32108.4032669016805398667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813a870fb07f16ae45864839e4364c73f67eb82c1c3a4e6fdd3c07d97baf6bc9
Date: Sat, 22 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742655593
