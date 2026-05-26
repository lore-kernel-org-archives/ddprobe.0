Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5F43FF88A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779808354; cv=none; b=lhUEsGSbmVSrTd+dOsqrO0GRMZcoeJ2urE5x1S18UMxNyF17sIIuua4uFL9QZ3jksVZd22l6sJzqxaKOe0/QSl+mQ4EGrT5JwgSXyhYppbW2YQGkqzTBdZ5/Rgk8FPTIrfMtUKHF6bYV4F6vS8S8LO1rfPazbDnfxPOKGYSn/JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779808354; c=relaxed/simple;
	bh=Dk/p/Il7mEAh3F9SpiqkWhFA+gm6RUIG72qWiynzWfA=;
	h=To:Subject:From:Message-Id:Date; b=XyyFOfi7eRwKC+piAwOXv5JC4jxC3Zf3f6FRjD6CEXk/C0xW1QLDa9k9QJvlXOsNXUQq3Zqnwl1YA8OfGiWSB0Vv3vE0RY1FdnpZl+IGw+Z6/Az2jeA6OUnirnqNEsfz6DJ6LtbeYEtmSJiQXLxhmNj6DRbji9vK8uZo+nXln8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQsRBaDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQsRBaDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED633C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779808354;
	bh=Dk/p/Il7mEAh3F9SpiqkWhFA+gm6RUIG72qWiynzWfA=;
	h=To:Subject:From:Date:From;
	b=AQsRBaDFbODcpk7IxUjGUrMEqNILnbWK9m/44J1r0uRBNHAMRUNtNLSVQJphBWTDP
	 w4Al02PqGOEFdNH00glv3Qb0P4dnLxAjvoU0MTUom++sqlIPxASU26O0GYvyW7/zqj
	 HT61ykByvAPMvzKAnvY9fWBWHBgO0EWZXqp9rbxJ6ON0Rp7E0X8jeV0DxZUgJe9bnc
	 YhURHhJI9oV6Q2THELCxS3EtXkoTV/idCqea9E22Q2CWbGI22slHVDvQN83hnHMJc2
	 wIZ15nzu7FT4zME1Yt+bFRIoMIhZXFV/akLQtn8f+TkET4xobMvSqw0nlYIzy+V8+C
	 lmgWlfucFrL6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5045CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980835379.4878.10641864277274316693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c49611c260b39c14f125bdc392a7bdfdad59138850371d71057c08b287fe9ec
Date: Tue, 26 May 2026 15:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779808353
