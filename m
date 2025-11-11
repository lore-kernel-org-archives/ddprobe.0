Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF5735970C
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762869594; cv=none; b=Pf74r9FMv3F8CoC/GyCdqHeMFiYuj8u3DpUZhrpQV+qwnM7CIrRwGfTvP9O6pFZuklmZrARjnmIMOsh3VZuLGRSgdbDSXOcsDctU+KcFcJjfddF2YoaZdDDpRs6BeELNEwOq4tMzUogDxOitCeBaRTgFjRGzJTz+ni2DPEo/UhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762869594; c=relaxed/simple;
	bh=F7BCjuTO+CKMh+1M1FV8/X1iQIezQgiZW89iEovXn0o=;
	h=To:Subject:From:Message-Id:Date; b=XCScqAJyWtEsc82G4pV+2c+9k3PijNKfa8v1J/4f6H9iW4G85XgbHq+3SZetxpK14TfwlMIN2krCJ56OCWgUYYOCqabOm6H685JpPYzgmLGwUTYc5CGVQWKbkAbGfnBgokgR6mRZ+lBVcTKL97WZ4o6QEEM+cbZb+SDSKw02mZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLQfpwuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLQfpwuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E19C19421
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762869593;
	bh=F7BCjuTO+CKMh+1M1FV8/X1iQIezQgiZW89iEovXn0o=;
	h=To:Subject:From:Date:From;
	b=KLQfpwuTZ0SdhjU6l7HmTGp11wxS/gVRPaTDn+jU/Gz5Ug6/XZHpxTZkEOhJonttM
	 ZvuKprdfQGUJCCV2zqAcPjnoiW2sZ7UvPFsQLfgO3BslUgsoT63fnmX5QWX3bR46sP
	 9yU5bO90pjq4cMTNwj7dBhtdbOL64wqB2ezm0BwQWcCHUVwoN11mJEjkO4NbOp1eN5
	 NusGQVKiJSGSGcfTg9eVnlEFCOUnr52A2QJMCdkxN1D3UQJklc7osqByzMy3f+oIjv
	 NV4rzSxEu1Ni0lYtSOCwr55Cx5FSmkkx9he1jkcn/vgeyGTClPRiOw+3MujLiz/dBy
	 gJnQENe8kCh0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E212CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286959357.9627.7566346608069838829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aecefc38f474a81c7e2762e3fa89365716dab6431ea01d86a47353720999fd12
Date: Tue, 11 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762869593
