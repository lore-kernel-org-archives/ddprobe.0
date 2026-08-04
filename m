Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B172712E1DC
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785818434; cv=none; b=U2Ty5SFm4Qi5jPQ0EDIpV3FTxfuDRfRrtVrJ1h/HeAz0GeVxwGhRcb5a0aJ32TePbVqq8Pwg58EXP7p9Rc0XLHE2lAUuPYXbxGFTvuWop7DfB7Rh9arKRk9LhTNrpdiP+LK/FwOaGuxcv3GXxdaZQLoS7nN+b7iqQJLGkGFAYJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785818434; c=relaxed/simple;
	bh=+MYhwW+JQJMI44uBT5CkCY0mW4iOI11GMtDuQhQirjk=;
	h=To:Subject:From:Message-Id:Date; b=WruQ13Poxi1//9uOFykJZAn8Nt/tOtIe4GGvGARbMZgyvaQavUfWr6T7Q69/TNYDxBrSCF6f4BSQfsHepHB7m465YfVXz0Vu5H6PE+0SPGa5OiTD0U8tjJ+/RJZKzoJFQ/lV86O0jIESpDvGzs6DA2k/1uLA920mkYhRPoVPuzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3ujLBp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3ujLBp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F2FC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785818433;
	bh=+MYhwW+JQJMI44uBT5CkCY0mW4iOI11GMtDuQhQirjk=;
	h=To:Subject:From:Date:From;
	b=V3ujLBp5Ooy6TQGbMiR9aAvijjRYiiOERiGXUteJnyQFKtcYIBZ6PmY0oKD+i1mZJ
	 y5ZfduM6S2DrkuOEXiIQqXrHNbQe29luNr6DuCN2BOAZKydSUMghlMhaMkPXrZm6dm
	 BObCXxg2xTslrT3I2L++xQ/5fvH2NCc9YE7xzQlR0r2mLX1y9Rgj83vInF0R5Q6O57
	 OhDhl77oItlPhAmwSi12RFtbX3uC1P0Am3E80CLRNJ1axzE3t5ipNkEqcM0tsTwifH
	 4G7e7pSzzTPwvFBMxPb3k0WbePBr5j0I4DyUdjlvyPY5hvt8wUClg6HX7DtuClz6+R
	 N5o0frT/XJhgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFFBC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581843372.17045.1205081597779322776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685f9da18f83f7748e466b12fc28180f366f9555557ef82023007fa405e8b903
Date: Tue, 04 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785818433
