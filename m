Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1C13B0AEF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779837754; cv=none; b=GlzTLDKLtF2w4Q2guiN3tMxmnJpW8t37Dm90jU/6+xMYryv2wEr/k/5bcwfAsH1LGnb0StoGFWWkKxA9GDC0NYh8Yad4bqXKkT/dGNo/SH4+QxNOG9NEPXC2vOCiRMa/Fd1qEPhmi6taWno2bNLZd+d5rSFqoDeBcKj3XW05ISk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779837754; c=relaxed/simple;
	bh=w0iZHA0PspfkS4A5wM76LvopequUg4Uxp7zeNlAncDM=;
	h=To:Subject:From:Message-Id:Date; b=DercgGK3F8nMpq4/lnf1QEzFEz1UIqBYnzeX8PiNO3Oy+d3tdsATvunx57pNyHKLaZQU8dm3GwbqvZ5uT575TJxJlY1nXLNXc0/XA45oK548TYWQbsMItKjWMWx9lVSwxXfdTiJ3y8Diz2vGRCexDX27w0wg5OL0fxZKnZXupGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esK6EQsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esK6EQsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9149C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779837753;
	bh=w0iZHA0PspfkS4A5wM76LvopequUg4Uxp7zeNlAncDM=;
	h=To:Subject:From:Date:From;
	b=esK6EQsVtaWzuIeSs9erpMVWGnFevqiPeqVetIkdv9DTaoCiHDru9xRCf5KoYTv/9
	 peIaPibXHOlo4WypDMGI0MFN6v1dsUfw0tF7dZuc4ar0MfvciApYDwbOSKs989p8Xb
	 tJt8TEoMLAe/5O/CbDY6c4dqvv6AUo/Ym+ScZNQ47ZGPV3MCq6OsQk90qt5IKB4z4c
	 xFbHgg0zpLrtExIHPHdKWqvw4qTlHihoWiW7vVSGYG08+Aob+nvbqa4/OpY2oSQalv
	 4hM4Tte3YjksKhrF+DsedFo7ev9OYMvhDz0uPTGSVIv565O0aOuiYk7dX2LRIW/AHE
	 eCehoa+7a1mVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0C1CD5BD5
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983775368.22567.1835455480010631265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92f58b756783c23db5258a378eb7c10359e0563493920b49321895459ca1969
Date: Tue, 26 May 2026 23:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779837753
