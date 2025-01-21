Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F90C4689
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737428754; cv=none; b=Q4fg8aBz76+e6iyhTFuBAFTQ8KwUCUwcfoknvGcb8WLbCH+3rjjIfqLLuTZEuy05NjaKBCZbVhY6XM1SHp/d4LWMWeAZHB2xo+8xSMyCocuVHEV7D5dzi21PkaxtGRldhxZYhoBrcGb+Jk0En5i6HmDprLQKK7kX5Wn9ubEnTNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737428754; c=relaxed/simple;
	bh=GVXXmcq5PL+Xsw4MjkRbah1UBNzcOe0suQXz11FSBWY=;
	h=To:Subject:From:Message-Id:Date; b=FyoN6aMRMi7yxMgmHwSNY5tHjgT8/jd10iaTfnDpKcqlrUWJCZTFJPWRcG8Tuh3dpy/KvvLejkiVrMoNP6EnBFbHJHQOvz5FldGkS9nqZF+PtcqwOCii18hRX3cg/uPn/YG49yBLV4aTQOoMvX3PfVe8fVkBAO1A58bryvUWkdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqXFJQ5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqXFJQ5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BA4C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737428753;
	bh=GVXXmcq5PL+Xsw4MjkRbah1UBNzcOe0suQXz11FSBWY=;
	h=To:Subject:From:Date:From;
	b=JqXFJQ5VdUUBWWO0jK6TSyQC5XGIU5Sdp6wYboD+Ho+y9gfvaWoRsLS/W8d2Meptt
	 KAa8cJykL7IuLubMcNRFdiWqTlzKDzLw0cspctlDeTI+dYx8m/OEjoCY3VCmm9HkZV
	 arNd9qog4f2ly0UqF5C0CLvEUbcg/lHMLJiQjLv+hVQe+epn5wbewsA54UPM/2ol32
	 cZt4H7O2whAjxmr3iG20K7lHvYN18iApC4wDMJWzkP+QeY0/aZQHKlnku1gJQi0wVG
	 zqoCcIZmnZaN3vlvfv61Qvipn6hjBorDNOrf26SESkaqV+I4hqZOxEA87J7K5cenTI
	 y98MKEmoJ3HQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5393C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742875362.2487.14712551945300007781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90d7a1276422856202f563a8d151decf5f3339758f541b0ec2550bc7fe03428
Date: Tue, 21 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737428753
