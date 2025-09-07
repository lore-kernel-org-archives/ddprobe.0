Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4491DE2C9
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757225394; cv=none; b=tSXfeuaEdBPkwDBnrNxZjCgKaKV3wKCjuPMwZkU+s1WWgfR2x8vFAT49A+0+ckjlwkMMBKbxSygTD8oiCp2ZJHQpb3dQVIlRNJosAnEMxeszh9ktHpzdV8IqJcscbiLXkiLoIqaPd5O1VrR5X9oS/AHu9mWtCng5LUSzzFmr6xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757225394; c=relaxed/simple;
	bh=dl3icZXCB7+iMglCYXS31K8GhDut0UZ4JxdgYylZgLc=;
	h=To:Subject:From:Message-Id:Date; b=OaZ66wejqCiZRtJtYrGAIK/Sxis3e/RFjYuCfdJushfxrfr+FSS461auuSDvrTG6CYNPl8pEgBOgKaE9NQFX8e/f+6Sczp1W7uwVvUnxIkhWxLmWD45jypZB4wLAPZi1+ztX/uytegigxGgKoJJ53yRF5BmK/zhwkPaV2qivg4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0TUeHdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0TUeHdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3B5C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757225393;
	bh=dl3icZXCB7+iMglCYXS31K8GhDut0UZ4JxdgYylZgLc=;
	h=To:Subject:From:Date:From;
	b=G0TUeHdIdPii/pKbWvgnJiEWUuIGWXmU6b9B27Luxb+/AkqB+KZrSqg9zYlt/SYTl
	 O92Ig+Xdaj9Mhk8gS9oweZ78HSq+EBVNEGi4M1VicCDLI7PRmgHHV/2CqpLH1XCdoK
	 xOdYGC95K2F96b/6q1Ov7yfg30+Oba57UXKS1ax+ZCjsJS9Ik/MqNm/N0YiRZx+ltq
	 TaCH42P1QegLrVFVfFM/p7KSP6XoRAEpICjlO6N5Qmbnho69pnZjBuFE4krZ5nzcWR
	 H819MKYyrwuOlGfxDqJ+70+Dtzul7Cp2ctU67K/lVXj8yajHfheLVS5gYyxXkle0a+
	 EPfFsjwVCpw0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918B7CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722539357.24227.13159904579616867699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15fe8e4856eaea2290ea4983f130a2926cf25885669ae93a341579791625895
Date: Sun, 07 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757225393
