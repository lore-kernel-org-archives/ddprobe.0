Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241C22C181
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778889634; cv=none; b=apF8w4EJ7LE+6Eguclv/pgmc/YJOEdFaqYH0J8sc4reQ3aXDtONZ7R8Gk9/9T3luHXRqMIismVcFg810KGmpnGUMT9iGveCwTAqAqn3rUYpq/gjETtBh2szB9Zaq9tjI1hDHDo3G8Yrh4pw17RrJzUfZsc7vGlWIDxI8Nk/VsZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778889634; c=relaxed/simple;
	bh=PnJVuxnzu+gkB62ucyZxLbOzOE94ZrWIdNAdS/HrT5U=;
	h=To:Subject:From:Message-Id:Date; b=W5xU0cmvbj+qBt/3R+MmwhWk+mitKjGOlCISFHEKvIagVoq/1p87Li3yfOaSkUGnIPdoQ3c8HsZnXxPL5OFj3sbgsQqb+AUfiZcNK1/LjqYg4BY+o8rP0lRXeU/ew4nKrpHBrbMpTPlF8LspK+kXJbXjQAxF4csWd9VlpBgiRR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grME1Kjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grME1Kjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E14C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778889633;
	bh=PnJVuxnzu+gkB62ucyZxLbOzOE94ZrWIdNAdS/HrT5U=;
	h=To:Subject:From:Date:From;
	b=grME1KjorGdBz/PJzHeuNy26nIJ/ACZrkV3MMJf6G4a5D2C1cnihVLUEXhKhpqB3F
	 u4ddI1dmBZW+PwAKr+olcehw939kH+Y9n0Iu4/z550E3DlcjIHHWXFJmGzIEIU5QSn
	 7B+mznUfrmIoWJiKx6gx0Jua+jT7ql7KrG11wSOClCwZ2v4I8FauZv5TZElJ7ETH6A
	 i3gDDSsNm6xtK+ZXyVwtQ03AcwXNFOPBcCk6+HPcOTgc0goDhOhGrsfUZmcg9DXYLb
	 KWIE6tT708QTkTmwwK/7vZ90ufxajnVsEw7pn75y6UzXLUe+LzAZKu52AW1R8t/VBd
	 oyINk2OTzJICQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF0FCD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888963369.21895.1355676334030926511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e5332bc17d7fe50f129e5124663eb2560718d43c82f37bb4fdddf4fc9fcd5bc
Date: Sat, 16 May 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778889633
