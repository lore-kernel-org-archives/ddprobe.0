Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB0A3BBE5
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715949743; cv=none; b=T1hVtK5DsjcG467yyhlEThgFbNwKoaBhH9qWflWg21QknIAnIG8FaQVLJnhBHaBo+ahmIMFEzVGapgkwdYbCrthfKrCx6QQCao6np6vZlNvMj7vOx8AyB3PRatfDorMVxK8k1KsJs+XCzn4iBPHSfDR5IgGrC8vdyWikbGY8Rbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715949743; c=relaxed/simple;
	bh=Y9jOlMkEj6VtD1FFUmejVGTNU/oMR1AQjLBtcke2jJE=;
	h=To:Subject:From:Message-Id:Date; b=iFBgYuLD0mEkEmbAtp3TRh+0avV80EUQBZg/5XrGIkmidjZ6Ww9TzMbwvYPx0sFtvVjWfw0SB/pU/J6O4324g0oNh12W9Z+Y8hxPk+ylRE6nnkXZScSqRWIcdbSJyxhT9h+NUaz8Ahrnn83PhMfCQ/WSHgKFvOVx2uqaJitR3zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alaFF2cg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alaFF2cg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C50C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715949742;
	bh=Y9jOlMkEj6VtD1FFUmejVGTNU/oMR1AQjLBtcke2jJE=;
	h=To:Subject:From:Date:From;
	b=alaFF2cggj2uSxY5WscNJqRAgTSfgCbkXR8uQqKYBq8ovYLlXdt0AfbFSgsRpCFjs
	 vN2cpFro8+S1yXWkFwaNukTR9xNFGRQXFmkJCeNuCbLV+LeMC33WDwPHVBiUk+HS4i
	 dS/Fw7fSH4wVgMHjXUiG0HHzfY2lnxny7XTczxMRLgp1oPC6DQ7NBsdnnKIPh2jfRl
	 LB+lUl2gSD45PAv9mBqDFpmpdQXjWF1eJ0WcDh9TcRfwY7rZ3nfdzIrN1uwoMo1pss
	 v9OV25ciarW9lPAj+/tA9AB8uS1Q0JO5M23AgAMxNJtON4LeQycFZsi6122C96fogz
	 UwA36w9s61A/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59E6C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171594974277.16867.889484313797789234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da796f0f88031870a0ad4d63162a78d911205eee01613300a9bc8031b163a45
Date: Fri, 17 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715949742
