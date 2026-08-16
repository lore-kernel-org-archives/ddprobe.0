Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5CE1448E0
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786907434; cv=none; b=fAWO8gHPm9eDbhWdApgRslzRQItsw/ZyiOoIyKWu2+doABdhFT6VZRspToUVaPf4Lv/Hwsz2xJV5kyZ0G+UNdUkmiX19lPVV1nteTiH7jYu07NhHdpMV7g0p4P7oSHt0WVCnGLE0l4jzRmi5YMpCcTyww5cPGO/WG8nWhk0gSMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786907434; c=relaxed/simple;
	bh=jHcAuuSH/6PUr46Mm4arJg1FCYZo5NZ6PL6c3vpbKGQ=;
	h=To:Subject:From:Message-Id:Date; b=Y3DiEJtodQ2oFanbVNgXynOBknQDDLce9H83iyoOWK/Iz7VR37aMzMNdU31G0YZp+gVchv72U+TevPpMwhyY1k14LcMoHfM1xFYXiK83C+xlZ+CzSNwQ7kam2X9RuaUo+VhZ0kIt1TzP9bZOPsTxyUxOyeN6toz3vfbAKGSgtNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nN4/Mefp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nN4/Mefp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1B0C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786907433;
	bh=jHcAuuSH/6PUr46Mm4arJg1FCYZo5NZ6PL6c3vpbKGQ=;
	h=To:Subject:From:Date:From;
	b=nN4/MefpTlpewTBZEVCnEFcbg4EHaZCWS3I6rMKFB96O40TWjst9l6fDSg7jmptw7
	 yutuu1qHK2zxOvi1VvrVxK3pOvWSt3NbiQbM3Wlz7IsxKRJJKUSt+7j0VOvbetyFyc
	 1UT5nEXahe1bAT66Fro/efE+l+cSptXGqUU1OLfdUgCXzsncf4BxcI3e8mwWLeTkOe
	 WSjLNF/UesaN/oMoHmtNvtsI1bWNGcEfEksmwghlb/vO/lYahmCbt5wv4LDWAEEVDq
	 975/PK6oosf1VNGMVg7vwyG0C15iMC1BueHJiI8Pw2nXcYOGrSCqvzQrNMfhVlCEBR
	 M+tS2kX3/CULA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB14EC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690743369.26056.3044944408672435085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5fed88bbc16c7a8aabd446e0e99385c047c9aa6655b012d4a85e2ba6dbeaf2e
Date: Sun, 16 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786907433
