Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A3A6125
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737306954; cv=none; b=qqaawUtal5K8V623VT2ko0TBcECDxbMPrASCUN2FXkOMT0Tq1AEtaln8cJAGQ9X4vOpe7aclNwCuLWUUS9SAaa+0n6hS1A9HMyWgz4Maqf9SsT99vaRytgpzfDg6X1nqk1XwYWFv5HzRS3Sg8BMDLCM5YMz/m+KYQo3SBvQ6YUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737306954; c=relaxed/simple;
	bh=p99AMUnHt4UdjGRY5NMW8P72038PjAEJoA0XIwDeYtQ=;
	h=To:Subject:From:Message-Id:Date; b=g1OSK7S6LaNHD/1Z66yIMxLU5R+I9c/u5FI6+wCBCaOcA5JR0qXipOYLW/gQeqgjNz6j7GXqrDW38Ht10dODm0H8ZijaxXGbSd/SmHgfKzqMSE8rKpOJk8v3Cz3ZqVb2ZhDMffDsT1OhNiGAt3fO3wt6fJlRAoZzUBJIAUdW8Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPmv4Zwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPmv4Zwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF557C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737306953;
	bh=p99AMUnHt4UdjGRY5NMW8P72038PjAEJoA0XIwDeYtQ=;
	h=To:Subject:From:Date:From;
	b=JPmv4Zwh6dbwxZh7o7ls9OCYdcQr1suu67M1Q1EkIOCHA5HZtjsU+Kf+OtqBtQWNG
	 yYASWlSzE/P9fCS1S1ORg9KOpdbbCk5HvmKbs5wddOPfG8ppHLtL0Ig62IXMCiX5pY
	 eBGvD1E5xJK6BMNTYCqkt6J4bQfm/kSkxF42VN7D0YpzIEQUDlm0FmDWbzYINtoJCv
	 VbIupT6hyEbLUHLE5kJqMAN+8CwxiV+nc1iEAChr2ECjc4l61tIdN2lvepee29+PSg
	 QO6CmC1FiPwhtSMWytMQGiW/vkGM9APWW8Hfgy7gqBdmHDiDkLkVBbA5SXRh7DBN0m
	 1n7Uj4LgkH9rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94179C02188
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173730695359.15155.8933406524243245262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a895ef3a13810976e8810c78716e8e341ad08dfb053b769df3b96912bb2b13
Date: Sun, 19 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737306953
