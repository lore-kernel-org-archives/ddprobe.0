Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F1713BACB
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731175554; cv=none; b=XAK+3ZfDu/9UXv1BYp7ac78IJfMMLPFuca2g291kbgsn7w8duRCmvnj9iKV7dOgT5q3UI5LaJ4WqhJQdZNG24GgbQ62lmBYUXU8uES5gtfJ8nsXui3yqIuOPvV8L5WTSIXR0G/4GAe8KaSMEhy+kOiV7lwtmkRMFxMLhtK8iaoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731175554; c=relaxed/simple;
	bh=1fRXxhaV9lDg4jqvqz3nUE2/7Sf0k5Cz6aA8DcVLoR4=;
	h=To:Subject:From:Message-Id:Date; b=d3F1LzIIX98gQD8Sp8YFxekOppwwibLAKvzeBd//45geAldjbedk1QgaquMOMqr2sL4BIGQGmS2T+NoQchWKwH2R8NPqdEyU9tP38MdPBVQyeF4YuoJ+549xkOxlNe/Fq7ObtzVzDFlTZawo11ep0NTYs/P72oRqabGe/ygIc2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbQRxY3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbQRxY3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A967FC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731175553;
	bh=1fRXxhaV9lDg4jqvqz3nUE2/7Sf0k5Cz6aA8DcVLoR4=;
	h=To:Subject:From:Date:From;
	b=TbQRxY3XaccvAaG4wQfWDIbjSxqrseXAR2+ieFoIWwSeam0CunfjFXIlf+7v7aTKK
	 p0tx4r7BdJp4ZSOjjU1pWqLZE+bLaYZOVisSSYQfdPlZtzK3NE9IYDKi1gRtMjc3xD
	 jb6FTGZLkA3f+KoHM4YHFW9M73UyEkiu5XZVrPK/N9KTYa92oOHM1+T5RA6ldLbXyP
	 o426ajFu4TNmCR9Pa0LDk5cDxrRUI/Xkw2x7DmnT0pKtKecF79dRtzG+f7Sr06nRKW
	 Ytww1DYVUAadjPfk2GKywUBEpi44oLnaMLmINvgzKB2RN/3P+9JHuclFTEC3uWuOck
	 n2dUATlsnXCOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F18D5E37A
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173117555358.31654.17719946213747273439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25fc582aff2c4fe4afec26056e096184accfbaa007754eaf402c1f430e1f953
Date: Sat, 09 Nov 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731175553
