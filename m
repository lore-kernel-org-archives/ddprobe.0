Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3574038332A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784011714; cv=none; b=rroTQE0PzNwnUwyMnBSuTbTi4iOn5fBTJkcF/QBOU4/hJnpTwK3nxakvoA+EAJm45fFpMcjTnSeZKE9xLd4cUOR8vMasSWoiwR0nysTtvT+yvloReN2Wjzj8fjRT8G0YqN5DAqGCUJF1kGnHaL8wZgFb4ddVPH8ze+M+r4kOww8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784011714; c=relaxed/simple;
	bh=Je2junk4WE+rmA4WnKX2x8X7BBiyhyXH7WW4bAlOF1c=;
	h=To:Subject:From:Message-Id:Date; b=UeO9B7Bn7KH4KMHEs6mCAPz39kVWAjGsClsqU7/N2W3ffkSpXIovoMPfCPrmtNtWOz1OuXSBjsWEyrko+dj4SOQ+RCXQOCEj0u332CuY4K3kM8iVkhPMWjxjWBF83Xlsj7kFByPZCsDQYciEXk5kdY4jQt8wFrqeQSWm4d545r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXBEDxOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXBEDxOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C955BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784011713;
	bh=Je2junk4WE+rmA4WnKX2x8X7BBiyhyXH7WW4bAlOF1c=;
	h=To:Subject:From:Date:From;
	b=BXBEDxOCo0a6YWQaXLTaBwz5AxV6TpIgNuilscFmcO84CaoQp+djR/LvsGwdJ4mGd
	 gk0lbNG/XJjUKFBy5znTxBybGvpTEfoAklTZX6muW0vsO/L0vVav2gGNV+8lV/D7EZ
	 WZ2auhv0KWzGZgOQXGd0lZzbsNgp+fBOHMUc7Lk67ByldHuYegcIxMgQkp/gHpcMeB
	 xj8myoquTMPwCmLSPXDHnLePByOvb3imRqq4zmkncllWPuhmrA7UVbyoORgI4dSO13
	 PUlhXAoRuFlrPuGWfOfMux/IQZ6hc/dNN3rapuSIVDSfI6rVgUJcd/z6hUk4AoEGXS
	 XxaNVJrTUgIow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8402C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401171368.4457.9751605244491380818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a706898ac5fa18f5878589d1b10e8c5b360b16fafa517dcb6c9b92ab2327d966
Date: Tue, 14 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784011713
