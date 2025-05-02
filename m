Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31908267F46
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746172794; cv=none; b=gPGiawn/iF3s0qfNCvFRGGAdhlAj/BcLz5Rmo4CNIizNZPEgzqxjgvmNq1NBjzJyCA9dBovQv6E7vXcA5r33SZhaAtGRu0BDFtRMbSZaFkXMnu/xFVzxw171qZ5oKaQX69D+b1/DY8WOcy2y1Lz/zq0pWUnYgYhAuJutfdi0okY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746172794; c=relaxed/simple;
	bh=esH5SQF5Pg1ddY56IJA3Puf8FbB/L12Ghrh6Hf+oe3Q=;
	h=To:Subject:From:Message-Id:Date; b=m74Y4g85spuPV9aKrn1fgeS/9VUBDMjpo+M7GqvDG33xObk47X/OPrGjVWQr8bfppC8hUGMQ12X7nElcsPueyfdTthU4sOSjenHz/nO2x7JCzES3ajXyOSRv1PxKtBvW6UxctfvtsPFY0RAqwq5idi8Yj1ybFqGlQIKBx/Xx/l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhQb4P11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhQb4P11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0492C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746172793;
	bh=esH5SQF5Pg1ddY56IJA3Puf8FbB/L12Ghrh6Hf+oe3Q=;
	h=To:Subject:From:Date:From;
	b=rhQb4P11ts/obwDWGjOA7TdESv0XuYXC/Ub+qTolw26ncwz3maCGfnd8tG/bR/Hb8
	 EuKAdPjJ2NlR40ebOHqxn4C/go2T4MnZOJF0AGPM0zdreNbsQun2dNVZY+adiF/5oG
	 rdUACdq9h02LUQdyKOCL+6vq6eS0H40Kk0DrLA110Ng0mesUu1OnC2ogQiG1kRyhK9
	 xDAXbvxJJKg85i+fWXyLQlJgaakwk0xxotq0g1fuHWWFlOpY/jAfZfBcWXmN4yL8RR
	 gEsIQbW2E4Xv3ro8+Pu2lCJAr/z0CqWizTpksXz8/2sUR4dw2Hoc0vHBqgR4DvFNo/
	 P6mleo4NzWYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD59C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617279357.2097.3310699056383985092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05cd8bd6982eb9831430e7547d16888f74680b86f07ee7bd889fed149c8f6064
Date: Fri, 02 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746172793
