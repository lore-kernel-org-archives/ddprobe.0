Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF1627C150
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745510394; cv=none; b=IfRGYnTCx9i2jhGjkm8RXwZzN4fFpAnAqeNHS4F2V9NhoB+fECj7Lwypgy+8L3lz6EoXvDneKydYe1TpPbpdE7KYz04K/K1d4kAbEQsVmXq1A9ZiHKDEglSbA41aBRZ6jfS8qXT/iqj0Hk2UXEbXOEI+lts5DHDS//S6QpaMdFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745510394; c=relaxed/simple;
	bh=PPQGgdd2FaSglWalhsqZ17iMFJ43twdBgU2p7CvlEnU=;
	h=To:Subject:From:Message-Id:Date; b=pCBuTB4E7f2PdLE0YxBBTMjPaYmHJ6tNwe5GbOiAY91JiAXdNuazF2CJOSD4+JXJ3Ut6EEQLQOtox5kqWEyyn8Wkr2fWsoMRx/LVmncgW76CFOw5HJwRrJ1L29h7rDmnDGrckuZPyMElkIu9KJ+4PsyFBTE1rneQB7ojHOH39sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcxoOkD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcxoOkD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5B1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745510393;
	bh=PPQGgdd2FaSglWalhsqZ17iMFJ43twdBgU2p7CvlEnU=;
	h=To:Subject:From:Date:From;
	b=QcxoOkD8ZNN0biNz7Z9R3Ti3NOLQ0f1BbaMAHFLcKNAZQLrnkwrJIlvLY2zMqnqgC
	 vrp4ho5Xo3bRKWM2w3lQxFXi+tZxeb+f/gFZbf7z5qE1bsi1IlXEHc1bBowFP0UNsC
	 vagPyvX27BnUqspPBnO4ZBlgtorTav9a1q5cVHYpJ7j7izNk5nnad+KvpVaRfAMEYN
	 VviAJzAVSV0Nk+4Gt2qQQFFHx+N/Ct+Ommrh8TbqtXCKFO2xZj4YvrKB3D/DklOuJL
	 g2NEcX9K6qOrOGq062D/W+9aH+mfaH/7M8QoYx3ia69inSnfCeUWVmeySB44ZXhkuA
	 heD2Cwokx13Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC12C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551039357.13946.9642041745110594988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c69a8c0d32c34fbeac95705d85223bcda451aed9eecbe49482b78445274954
Date: Thu, 24 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745510393
