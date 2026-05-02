Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D701A683E
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777689454; cv=none; b=pj2cF31VXVt+bb6ohD5H1TDiOIiqid3u9Mw8vzc69f3OFZ+8zR3XKsa+SJWCpOXKy3pvm+oIthAntt04ImT8/OevMDJx5Cy00rawfFu/ZnXKCJAAPZ+Js5na4iCBDJHzpCin0y4sY9bqaIX2gouD/s8/LgJi9PzJ2KSH+pH/K7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777689454; c=relaxed/simple;
	bh=KrHqA0nNrRv/7/TSMxfOE1UZViEkj06g5qEPB5hPtxI=;
	h=To:Subject:From:Message-Id:Date; b=B8iDsq++MVnm0tc6EAIVItU4xwAPsnGPfvCnzBPYAxNHmUX8ZQOi9dLTjVX3jeZDOVhTWxl1hpAW8BKVV7b/L9ddmyXpuWCimYgchW9XTisfTEhrRtFAQZQHPbcCmAEZPSGkWg0Sid1n6VGovqYuqFJATkXcsUDrc5N1RyYD11E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gx2lV9ov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gx2lV9ov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D8DC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777689453;
	bh=KrHqA0nNrRv/7/TSMxfOE1UZViEkj06g5qEPB5hPtxI=;
	h=To:Subject:From:Date:From;
	b=gx2lV9ovtrQMcZNjVMmeA5wxQolXCwVLxNWBeBhL4XDIBk4TPpxCErEYGjapP7Uf9
	 TGp1uDqhJrGKYH6ma9TjQDtb3ctT66vLy3VirgLXdLZTRwZMb4fTGWzm4AgXW8pqgE
	 OdNsECR67Tyik4tSzB377igArWdd9cvEUGVcj3gS582dBXo3kAxwxNernXoo386wt2
	 pEsu/pM50jiepW7TOFRvvnx8nWhB8hJCrk1Zt99pkNNMLQkDBfkpbJJFM1MrXP2JYB
	 rF3eNtm8jNnMrxqRh4A3ADjn4Nr5k+sd7wew7iSH6YpnS+DpqWdEUbJLOOPmYI1Jcc
	 LsIASztQOiq1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC201CD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768945368.30230.12242992916385715520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff75787fdd33cd4518ee47435ba911609c52792ffd00cc91fbd65772070fd0b
Date: Sat, 02 May 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777689453
