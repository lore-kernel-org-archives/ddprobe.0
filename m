Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A4C242D60
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765338174; cv=none; b=Qu52xOr4eRApwIOSSOtzLgtnjngq3FJJNpq682+dnKY4Nz9KnF5CYFeumPCfkQiOYOCS2r2oRcmGwEa+ri9p/K8wLKt1xOHs6mI5AzDDva2yScnIWwAT2n45UPAw1CrehdQcDuEyXxh8B63Id5fWGc2iOeaIIKCw5pInwPYAMnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765338174; c=relaxed/simple;
	bh=WDc8eHV94ONZhDjzT5pDq6veF+n9fZrnieNuc3WGMYE=;
	h=To:Subject:From:Message-Id:Date; b=rVVu0BQ8mcYggDwYtB2FR4H9Spxg9xSMjlCdOdGD8A3nnJBF5YxC1I/i8/1+67H5Ooq/7WKI1uqXcg+Vbw2+8J09w/wYy0pdto3Ep/D+7RNo3ar5xkhbp5/YfaIZ1Lu8l6WAwjgFOBVAdQtXlGRHLGTRUzKyCqTiTrJtI1Q9rCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fo5ZAHsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fo5ZAHsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1E5C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765338173;
	bh=WDc8eHV94ONZhDjzT5pDq6veF+n9fZrnieNuc3WGMYE=;
	h=To:Subject:From:Date:From;
	b=fo5ZAHsOxRn/WcnIsOw2iEB1r4k1V5/M35MF3h5e1pkn+3HVnHZYC1LB3V3x7TrHH
	 I7qAzX0x1r93gONJn+rsRTO5Czia4hIATrema6hJ+FYD76FOIjPzk65Zl6zXrzFaux
	 NHXVUi16alzHnEfsW4qYYNNhqEj3LuDiTcbf5iuyGZUCaXEgxU/0hfvYbkbaD+43Qa
	 MM6TkBc87lDq2CX9kQJ/NdRjFBphvYZ2VW4d11UBHfawcQhnNwNpqVmMUDnkgf2hM+
	 jwBJPSSzDjvk3ECkI9OphNWptZc0md3GEWuHnJINmqBsjGt92BnVQItRLDKLFIPrKm
	 d/cSiXMtfMw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D14DD3C527
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533817360.23427.2810718929829252775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1fc06b2030b0fbde8101bc798a476212582943c86fa3568871ec2d079de46d
Date: Wed, 10 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765338173
