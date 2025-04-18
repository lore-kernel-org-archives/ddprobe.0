Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA03770E2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744943994; cv=none; b=Fy5Pd2P+XjnmWey/waMZqnob9l6jrr52R5IFsdV2PxtaacHF/qZAEiRFEh2P1GL7wxXqxd4Yb3NB9HWq8ElDgdeHzjT9YD5yQfyGBOfKhgAViLOiawEqr597Pgj1jHA5PVGKHq+XLcFED6fVxNY4WV40PUNO5gaCsg7DE4F65qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744943994; c=relaxed/simple;
	bh=Hqmn62bF6XiDslX9g4zZmY+OJznWCr5vqYDToLKiTMM=;
	h=To:Subject:From:Message-Id:Date; b=ckLRQqc1KAXnMPx7Sutq6bGi8tRGlubXEclP/o+s3W3USC1TH8PmQVeaoV+8fE2EhUMSwGdO0XgZGtjuyAp0oTw7/DiLa4XfgyCPIM3YAxJ83cZqpgw0G0pHjzlSZOUSuwecniKWMSC5dMJ2eGz+TAJSeqGRNLCLDPVapplKcbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbFex1YB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbFex1YB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC583C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744943993;
	bh=Hqmn62bF6XiDslX9g4zZmY+OJznWCr5vqYDToLKiTMM=;
	h=To:Subject:From:Date:From;
	b=WbFex1YBwY7szH1z4q+SZzXFT9c9GeMRBwBtd8N3TiLfCKU4X4AdNhiqOEWHAg2Cg
	 B3QF6LnpKgr0eFZuAZWARYn5Lwgt6HDI2EPuexCyK1CUMLRL68tsY6U4pj9YG93mM6
	 Mohnokwm50lvWv62uyJf2tsLKP27jTCZo2L2+1VbbcCf4ym4sWhNRdmDJRcYcrzidf
	 DQ3vx3GVCsD/NNM6EtVKLeej78mYOWtFw3owaxqoeqYGzH+0ySP/o8gw8qU0tTe0EY
	 3s0gJDIvv7W37I/pooJsDDlffVl+I6jo1UBGJa8N1aMFQ6stc4fioOwPtexaN4nyR2
	 GQginLyZi4Piw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C3DC369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174494399370.24805.16636589523617015988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95d60d4426137ebef41760b734eaf0d98eef1832b838e9c1ed46c1c99cfc7c2
Date: Fri, 18 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744943993
