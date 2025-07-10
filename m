Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E941A285
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752120594; cv=none; b=Mxb6gp8Q8x/07PjaSrqmdzQwf+kAa4W71C1OuLqX8+Qwr5slMehy53liyo3lusyA6XEbjVPrSnQxRAA6zmPTuOdlQGbeoqGmg1PtWOFpFg/rF8Pj6WybR0VlVK1sFaQ3UoWIfbNSnMIYcVanlWL/21+MPQmIdpKEblutOm2RCEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752120594; c=relaxed/simple;
	bh=z0Ts13ni830+1I8O6bh2BJwdHJphdPFP9InVw+I1Qos=;
	h=To:Subject:From:Message-Id:Date; b=UMnRyJmvZXJHvRHmLt0mVV2CWu7yQX1Ok2wa1jAZ5wyX3i8zVF1HjYTgyLg1gv8JwgZdTz1dyYj9KRE1R/oj3Ld2mtx7K83N+s+3Wxp2Pn/BKq9YGZ4v/Is5wGwGnkNEwoiUnbY6WQeRb+sYP9Yt3IlX6f62dMUnEPvZCkyocao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JI1jBe1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JI1jBe1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6B4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752120593;
	bh=z0Ts13ni830+1I8O6bh2BJwdHJphdPFP9InVw+I1Qos=;
	h=To:Subject:From:Date:From;
	b=JI1jBe1Oc/oCLvXGXgv60ZCa+9cFP1zFACRJ5EDczZ/3FJ18kBygrAlFSMifpybhm
	 0OxNEnWuwSj5WvZ9+6OHGdhqvU0wlNpPmLbDfklR79/JWtTTLmDLXn7YSALDyeOH7N
	 P38v5rbyOBes4wUfnpzepLDO8IHXAAQ9i0KuCmQRoWwM4yTsPAJR4NrIMy8HYu892d
	 srh1QTtTrpHDld/f5lgcfYQW4icul0M8tFU303tSNvsA8gSqRn82Y7i13qoFIYBvUt
	 khd0XI7IxLmTwE6LfNYzIUZfxqtMCkf695XXut4XXWeQvHR1k3Bh5OAr3Y1r5yb1W3
	 kAqViI4O76nSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F212C83F09
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212059357.28396.7975495830477651354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9796b3e77f5e339c2f5e0035692bb78d216065bec642db299306fbdd418f28
Date: Thu, 10 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752120593
