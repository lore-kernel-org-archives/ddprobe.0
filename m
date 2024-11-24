Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D9136C
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732490754; cv=none; b=OvXMFsP13ahlq9IQDJmz8VqFSaEpRTMcN2iCgnq+hAjlCwnWK4yKwjJv+8RqTI5SbJc66V5lLYU9cwfF18NvtoQlM82+oo2NMOGkzo3RDKQksuCbpC4Xcoahk6tYgwmfGPmCXnD9mraRs48QCuNOtoutWsaOEKpWqZoqRNXyxm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732490754; c=relaxed/simple;
	bh=/zcAU1H1n4wKOjYm+/kAdg54EzoFtr0leRhATzlLEe4=;
	h=To:Subject:From:Message-Id:Date; b=hIqxZDj9Gbg6//tRPuss3Gb6A+8M3nCYZJ/sBXg4Pkiq7gu2FB8945cZ8q+X6dJ9NgqglDrQJQ0UIEJBD2se8Exu1SWaKM/YDtYmyrSoOXGa/EkubB0ivj61S5iWbryLsZk/MKyGU2cg6FG+o9avwGJP6yjGiCMz8QbD1XwRi/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aO/OYZyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aO/OYZyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFABCC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732490753;
	bh=/zcAU1H1n4wKOjYm+/kAdg54EzoFtr0leRhATzlLEe4=;
	h=To:Subject:From:Date:From;
	b=aO/OYZyNBJSER4eMqykih2CrIK37QEMrVHIXSTipISfGHDKI7UgcBIDe2xBkN6i23
	 H3M6z4RQUqEC6F2VLpUHf5BskV3JcvCykTXxnDqMtr57Jh+7dNkCXAEwyIJ8P6a0v0
	 PCm72DlNgtDHSNX3wKKqEf5pHPr5F0cmAU6j9HofMSQEp0puWWiSKMRrvIi/oonVjP
	 xSXpMARObdWrDKt9q8soMt6rKlGketcL6Sri4rF+Dr3jtsIZ6vUwLh2ABdGH2MnU8Y
	 HXQNa6K2ND/ar358Q91HNFMfY5F0wpM04IqPS7sDfynilY915+oXCWdltUVdrWpCAz
	 cSyhzZlQggAGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6B1D3B7C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173249075362.10940.4870616103492767217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1dbb5adc878af792fca554d6e50f5204a4b692c81175d28e6d608f4ac75bec
Date: Sun, 24 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732490753
