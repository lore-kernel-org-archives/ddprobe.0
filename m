Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B308220F29
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748558994; cv=none; b=S7WCbKPZpTga0ZvZZLftQUHFMspr2xwWJgVlHPmM5iN3RDDf2K6u/HaHITzu/Cahzy/v8Wpa0xpXmm7F2jp3clGIah3Rlr8DLjxg+d3vQ5+B/b954R0tOoBNVx7PZ1rcP4jDIi2OAx2z+8xrVaXIE+9wkJxU2UcIo7jQj09VdVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748558994; c=relaxed/simple;
	bh=D+zid/V7zMDyBHzcc1miQOduf5QXmJJvNhr0Wm312ro=;
	h=To:Subject:From:Message-Id:Date; b=VEB087sWkqfqZ5XQxfqZKt11wSLr9uA+RGH1aQmF5JbZVlWO+R2D99VBbPNRq9LUr4eST0/D8d5YZw0d3DoT8afcvfeZcDV7hk+Kvx3VcnGJh6t0VHWejQlz1UXjW8KFm1zIv+AAuIeMKdWat0tVOqRomtReBki+t1tx+e07sHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGxDizof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGxDizof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7509C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748558993;
	bh=D+zid/V7zMDyBHzcc1miQOduf5QXmJJvNhr0Wm312ro=;
	h=To:Subject:From:Date:From;
	b=BGxDizofeO1JBueZayG/4SuFfekmVGD5l1TtLHpK9gUUw3lI+n4KF/fguVi4HDl2u
	 zfTNEufc56EWlb4MDzYw9xOu1dyXigsf/yNFkRv6R77wUFgKbRueZaFm0KvmIXk6XD
	 MuolQcS1eRqEBo+Fah+tfojee9m9yLnN6dG1H8TkeITRNofUNvPv7WDJwrOmT+EG1L
	 SBSN8WC3zlJFYwp6HtBjuZ0mpd4/LBVV9lmJkDxfjM4lRuFWdtiU+azzwHTgaVjMw/
	 7nIMZvHMLeyKzosABMxr3fokaHOz04nr2P6Fb42lKCYW+1KeGz5I9OfIxg8bHIv5CH
	 hh2jdEOpC6YYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3381C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855899364.10827.12779749600406399726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a3f4f09be04a6259638ad7870cee9f440f13f3319853db784ea4a93cd5cbba
Date: Thu, 29 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748558993
