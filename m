Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D511624C6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766750034; cv=none; b=eqS86LVX9Vhi5SKFyWLX076oAwMxtN1fnURZ8WXSuE/U8kYaQUezM7+kXC9hz05Z3Es6wIQFcipGb+XnsRc8GUXBTpxIO/TmCn8GYgWGatxbcgbRZ4sQyKzjcCeGUigURyLADoOBnBn7Gqa6Qwu4wep/iAW64+LAmRvY/9xEZTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766750034; c=relaxed/simple;
	bh=o5Daby1nrHwKfNpiMxvQuAD+NPh/IRETQzaO8qZlkPc=;
	h=To:Subject:From:Message-Id:Date; b=ax06SvbrD+8rOHfXcCS+ZlU6S8Mdm2GJIdjuYXiYKw0izaZK54n0aVmC1bgP2rMYFGEs68HreCDNqo/coEu7y3L59U/NVW/S1NP+V8B/bYS6UXrczEjmx65iE2Z3rrObhEcfNxpvHosZgLI/onVparh6Dt6hPGDsJPDY3ne9etk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fczp+tol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fczp+tol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC269C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766750033;
	bh=o5Daby1nrHwKfNpiMxvQuAD+NPh/IRETQzaO8qZlkPc=;
	h=To:Subject:From:Date:From;
	b=Fczp+tolxEflEhoN0XGnr4aqvlL2SdyX9aXKImAWZbpIGDowVd68q55f2Kn/X2kkz
	 pNNi3GGHhGutjfx1T1Pr4glLrQgvGYsclnQv1H80e/MrzuIVT3zgL6z++MypunWWAc
	 LcjbcICjy1qrxsw6ZQM4YKNA050KadM2mF/YXKkp7FH5cJ5SUAaPhbuMu2dyurNhJ+
	 Nlc1Vejg7TjGWdAa8iDw2sYDgLpKBCuof89SX8F+GonmSx8bHLaxbkIpmEi2VmFWO6
	 wx1roMN9d2gt1owqag7f/iLFJMX/j5/YfmpMn171FBOEilTtxL4k1Rx/Wvt0WtXYgE
	 2Shz7x154pUrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1E0E8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675003359.23420.7802883868824125462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4776ebaba0e8a473a6797731a2827e749ddceff187c2acd8f924518683084fc2
Date: Fri, 26 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766750033
