Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331C240DFB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777973854; cv=none; b=A+AbKYxbCXHflmEkT6Ua9Yg9uS0axcKq5rEEn4ZORJ9Ogdbb64MTRl/EwxtA5VXjYKEQDclPdrPxXmtq3fR5WIeSXXew6gCFE8wTSJPNTnmPQJ11qNhTpSclncUSSDZxV8u5z12dY63Roko4CLbkvHWUb8jcCSB551pCmVz7Od8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777973854; c=relaxed/simple;
	bh=Lyh8hTRSJQeLAbzMbFQNeFdOwXUDGtQnxuFF1vmuPi8=;
	h=To:Subject:From:Message-Id:Date; b=Sa4vHiLn1ctXFPUf2vfHTXbxIyv1A2c4lGAPkCI8wd7DmPi8kb/D+ba1bwuTT/+SKLjGw6OD6kztnrIKzeSAaARNY2QZjh67MM6A8gNZH81BdLs6PvGSB9HOdM3LxX6BoRbpiQ8SGA8nIJHmDOJYbWj2uHXVXIPSBEoquM6iEm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOxAGHYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOxAGHYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B110BC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777973853;
	bh=Lyh8hTRSJQeLAbzMbFQNeFdOwXUDGtQnxuFF1vmuPi8=;
	h=To:Subject:From:Date:From;
	b=XOxAGHYD3JgOqA7uYKNIk1+t0zzPCrz0hGID4/21Xw/okkq7wDkQDXEsiuzBSV9y6
	 vidHYr3g51bsGHchXCpCGi1zt1TTFtgTKAHDAy1uK2YMv0Pg0F8WSWa4ZbuY/7Zsu8
	 8pBFOZjglCTEwP+mz71UVApPaYfYPwCR+hBFPhPIihTHWvGCrhuO+XFTiXNIsRYNDH
	 mUULz0EIxAyiEI0jCnGEwLDp3cQnYXNHwZNazENJ4nzf+1yumztQrj9qBtLKB0bCxT
	 WhznVESNaWYvXebJWZl0bbpc3JXrAuU+nl/QOHJ1ZsU+pc9V3hHnaMtNpiVyxebF2C
	 VOMaOleVJJS5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9798CD3430
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797385368.9595.13064401124944239226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18fb6c3f90ed5d45e61173331ffb384720212795609dbccebe5c4ec655bb56ef
Date: Tue, 05 May 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777973853
