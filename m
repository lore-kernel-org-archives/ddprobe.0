Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD2347B415
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780578874; cv=none; b=MgBLle8yF6LcEO3tm8t0N8cxMO0OxoUX2nr3/EN3Ey0hESgPX17IZUUSWB/7LkHHHyxQZ5ajZ425riaCCXdIdt8vn9OFviwWTSkur96oHkX6fz0rGBe3aGuc50XhwSdG2reW2SyPCol43VRvABmI/8ZKhHYACdIn+WMkPew7DvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780578874; c=relaxed/simple;
	bh=x7wT6ll9diOjLwOa5m6qkGgDpfxXL7AMYMi1NlazZNw=;
	h=To:Subject:From:Message-Id:Date; b=YifawMG499AEhqq1KcGLUHdXAkVzY81NmtVAKG9Ce4jdnKc6Y2Nzbgw/zgfRiFvK9so4W9mxTxWP7uCE9jNPtl0FTZp8tVnUSc94znT+cPKUBSxxGHm6nmLHGyE+p1u0EsLQN6hIqsKBogPjNX+bwQtU8iy6SLdDUthVOFIfklo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aI9SRFau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aI9SRFau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F89C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780578873;
	bh=x7wT6ll9diOjLwOa5m6qkGgDpfxXL7AMYMi1NlazZNw=;
	h=To:Subject:From:Date:From;
	b=aI9SRFauTG1NgYDzXXSzfWrkpCMyERZjj97Y9qwU34vvipmftiB+tpYM/Qc0CZxSN
	 s1HZ5/bCbmnQGAxpvFZ8mKF47WNmWUoAeeRWPRR+AQh8wTNSllRUKYVXnFiGsIHK5t
	 I+yUSNgPoWDtu1Xs4dxpF0hLLxGVja29SY0FPXaPApyi9qH+P+BSX2QhhNyH6hTRDh
	 JMUueoxrVDYkFHx29hdssIuCbhddxc5iXfqwF7SNXXz5VeQ2HwqZ+V1IXSQDVMLWkc
	 dAPcuWtqHzWGFbTVeU6T2N0S6jsr+BjGXg4gXUGRxM0L8EYSechVARRNhE7Od+rvOk
	 xs5aM0NpXlsIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ECFCD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057887368.18833.6365804659836686644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c06085ca41b139b164e279237e44ab2d00d6fa46cbaabfa67513c3297e470ea
Date: Thu, 04 Jun 2026 13:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780578873
