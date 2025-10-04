Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A281991D4
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759541994; cv=none; b=SsN0i0RIyu1H4kGI0mL7ebqS8Pb3ECqn2YSYhhSlZN2HPdsiMbWabZj6v6wV6UK+mLpLY1PP42SLW71ShOMBfOjP0O1YErCIFtXGwo6XWEqnGKmKYZimfDO43UQc62iS7Sjwf09khtZEy4G/y9jvCsCyihXkNBSund9/NBiOPXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759541994; c=relaxed/simple;
	bh=GTxFduY8tbYhjM+6beNQe7S3mW9f+B01G9l2Lh/jqCA=;
	h=To:Subject:From:Message-Id:Date; b=aekJ+95vJDGGA48yX8mGKbBFnmp9IcjuI10Jf9do97wOCQGm9sE/MTnL2CauuQd9FcfS3s4UWPST5B2jARzYTtuQ46bMgdoTenIF8yKhyWRKz9uZoJNVw3OSu47EGPpPWzZnGcVF1cdTMQEm+gCGkA4W/Z/nWo2BH3CHdsG3Vac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8ftgDuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8ftgDuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D0EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759541993;
	bh=GTxFduY8tbYhjM+6beNQe7S3mW9f+B01G9l2Lh/jqCA=;
	h=To:Subject:From:Date:From;
	b=Q8ftgDuTb+Jj2X0jWnq32dFHB7ZVEVT46JWWjMRp9gxLuIaevHsNFbgIR4UXTJqx0
	 34W33by8KBDbNTQS7FD+X3kEpM19wmBXgy+71RudlRLw0pf+lP4sIyhkhcuNQeCgGS
	 uzwd+Q9A0vROlaMbIhoDh66N16vuMND/CZpm5Q+k/bZjfTKT5nUmvfzNhPTKi/jAFr
	 M/NIQsyKqc3xlnizjWgJFCQfqxXypAjfbWZ65rw5ZnkB+HegwrZSuw6sn2UKN0k5S6
	 MLDW1iFGlza66S39xXxKGJuUNr3fZeWHpX3PwA1G/A+jjST1R2zx5WUCxRAN7CH3pO
	 J0e+ohXjkGckg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9282ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954199357.26140.1058398295364290539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df9cf055dd960601d13078b3136915f0ef1df2fd4b87fce70eb56303a1f6026
Date: Sat, 04 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759541993
