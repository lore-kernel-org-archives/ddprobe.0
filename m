Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD311DA10C
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742398795; cv=none; b=JxqtAAJOlYpvmxni0wI5V4CeZ9fdVnZtRpLR0ohRejo67LWFYoylW/q2n0JgWeuFtbt+QMc7foYn3gAhTflg6LdyBco4QJLVoLd17HBqz8Mb0sACZY3ooktg4wi1IE0C6JZHPzkCU7lkB61T+SIwscB4ENNsTc3rafe44HNSa3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742398795; c=relaxed/simple;
	bh=vmat7uu+Xzi+74q+FOLGE7Cj3hY22lCWHZA4dyfro48=;
	h=To:Subject:From:Message-Id:Date; b=AGTi9/ehGqh4adgwFEcBCMkldlly4lJq1CzlG0oKeto4pldmWwflL+ZLNyICfY0DkegzgsLZnlXqiptyGYooeugG6JdZzASJ9GRw2t7YUoZkimwgYxydf8YyMNxCWF87PCa6cgEXytt0Znb8sSralxPpXeMh6lnQBGK1uLyhCvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hM9KNM3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hM9KNM3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69A9C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742398793;
	bh=vmat7uu+Xzi+74q+FOLGE7Cj3hY22lCWHZA4dyfro48=;
	h=To:Subject:From:Date:From;
	b=hM9KNM3F0P6wlaXRle28R7NJpfKyQ9XP9prU5oDrWyN5SdpCzUNAk1EIlbjhruf9V
	 F3KbmQjRI6Jqb08mdiS7YhxqNWDNZm3HMvpKXQKU0/EUKrtbZpcbfEBGQPXGN1pp/O
	 W5f7MyI7qVdI1c67Lu7mN+wu5rRclXCE2TeXMHVsW9M9F1rg+NZKz6zcjJG8ej2U8m
	 iLrHbwIAODJ6GHN+/S+DCiquRYcy9Yf43SRrv63zc3MKgcP1ehkW3NndiDSKM2odjQ
	 ZvtxHzh4L1l6vOp8BfD685txDC6Wih0lydgMUPyW0ILTHz/nSM8kRalLCPZCGP6yhU
	 5HzDZUshxC0lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4082C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239879366.4993.6884673486405484587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30074aac33a0bc34e68ba5fd10adf5a3c30b8d776e7aca6c73efb4edbfe96fa0
Date: Wed, 19 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742398793
