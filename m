Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584CD149007
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714144943; cv=none; b=BbWms3XebxcvMTjoQttS4mrx3K932dUfi7lLQesfe5Dn8EC7RtGZIPDBpD5c3xXBDod7QgrmHe/mh3Tg1JkaJP5rRBwLqQA9r3hDXSc7KFgqP3I6P+g8rWHl/Fg3TMlcmy5I8f4dYrfVoY36B+qZaQe/uJITZQaf3Y5MikwXqt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714144943; c=relaxed/simple;
	bh=caPVDF4oUpikAnVFDr2X27pstFL6zwkB47xuE9kVF8g=;
	h=To:Subject:From:Message-Id:Date; b=dOFLQGBFRQaq4YP3Nn19jbAaNtdseGGYZXoludMzji2FWbh2feU1zxby5O0tUiSJU3g7+5Vo2LjiRnedGR/ZyDSQcwTsy+VOrrJIjSrdoFy4+A/KFDyqt6W7/PMaFJ1tevCp2sgmwQyXgp/O2avsNBK5Rts2WQgLAqrYYPOBO8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5ZsxBGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5ZsxBGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE12C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714144942;
	bh=caPVDF4oUpikAnVFDr2X27pstFL6zwkB47xuE9kVF8g=;
	h=To:Subject:From:Date:From;
	b=T5ZsxBGWMDJlLTOKVi5/+iT/iGhkAfAa5yS8eDCTVpIjtl4J1eWVFY4mv+ZHZ3oOj
	 p8AYKhWDWO2Z3sSK6SvI1HFIQsDNp4eZQdzOtB71CuS+yacRQxqY3eBe33QKwWerYN
	 JZh0G100lo4oCVGGr+DqZ1GxNomof5WOnbpTvEa2Hm7cFPRWjQhBsyYbg+R42gVJTm
	 clvOXU6j8ncfBOiiG2Wm5gGoebmoRflkUa5PiRcm/YgsoKXVZEKO2xWFY+qoiTrzAi
	 xtJJJv1PszPvgPgSoU1H4xoMCsPcPFVo85U9qn3/uTgJipzkyx9sDj1C4HGJTPe6XQ
	 SyY6HQJ9+8h9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECA1C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414494283.8817.4775131810259284243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81444635b4c74bab112c6dd9ede98804f6a7b52c7fa827f46167ea14649914e1
Date: Fri, 26 Apr 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714144942
