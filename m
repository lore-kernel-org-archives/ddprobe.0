Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BB6101EE
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738993554; cv=none; b=IrL9Vnv8WdGUAiRImN+43QRjieTxdlq9pjnxvktFeXHCctOQe1LNFWKaV0KFR2U86lOMQaNURAg2A6UhOyk37KPdNKzbZUC7xQ3c8EJQz/yG9/nHxeTlbcs0CdfToW6W8hy4knh0OG3LQ2haQJhu1kckEXjzV+w/wayCZ1EFw7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738993554; c=relaxed/simple;
	bh=oVNEiUmR/A1yuv3RJTLMlOsdgsNhKwCDsJqn6xQ79gc=;
	h=To:Subject:From:Message-Id:Date; b=pgBOnWolz+HVtNIDTFxpacO0ySeNYj1gdxlhvC/BgVtDSvlnRCAPk0X8ixDJ6p7VZTNIaIWJBTSznBFfKuxfLXqjweIvp+9P9htSlTeSHWG7rYHtfwCZixYwUspuOpx0cAYbkNMbrTF1BePe03/+WRuit4pA++3B0YYdjCBrxMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQoW7xDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQoW7xDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3213C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738993553;
	bh=oVNEiUmR/A1yuv3RJTLMlOsdgsNhKwCDsJqn6xQ79gc=;
	h=To:Subject:From:Date:From;
	b=EQoW7xDB0PXQLMoT/kqiBaK/6EFLB/jx7hU4v7m+h88Sfsq3rtUpFfcF/PZLSOB3M
	 bbuYcRM1Uei7Wn4KApQp5i2XiLc6cykSVOHwdfR5VyworvfnnydSe5c8W5HdgGKI36
	 I2JeeOJYwLqBKhumymWinc4FVpE7IuFrp7YHnIU2J+4mMuT+W2jsYdZUYeLSNKg7nH
	 luIDGcTnPWRwVb6JUoAtMkWmQVKI2Ndp81UiXokY+sNGIo5J2IvU0QDI7WJyZSKC2F
	 2U1lG583qMFtvZRhmFG+lCkKS8evSp9vqto6IuHL6vX+SgTDm6M1IUpaz8/+asdVda
	 w5+akiAIrHluQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E14C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173899355361.31914.7800968708705148320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e706585196dbcf957bab375091e99b76a83f44b41c914a75953841d97d0ecdc
Date: Sat, 08 Feb 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738993553
