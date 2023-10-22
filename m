Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467F579C0
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbCFgRTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4F1C433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697977696;
	bh=6BvsobmqUTPO1Bxi3k9cYr+qMCeKYni0uwRjZLOZKmc=;
	h=To:Subject:From:Date:From;
	b=VbCFgRTTn5Z0fhadftqQvOde79NpVeMIGF7ag5xC55sJDh5tmdtK7mAHC3ostqKzo
	 gAjcYO5dt3W8tn6RjV9+IeUeEr/A0OjUG0e47FhTkkspE6D+PldbiNYdNM5M0ZkrVM
	 RltXuq3MDs4zKMGWZDT/0lzMQ+VX22oD8r6oJvmJhSSX9aCw+kDia2BbZFxRDle3uZ
	 R99QFSCeZsvQ0XaFT02vWrlg+8KlvIuYDET2LzwM1xNF77rwG9g6XG0l8bLQMZGCOX
	 VSDdfLhrMzjPT0ayzbGqtRmDiqiKuiVsFnNJF6db3nMMOhHY2G8POLfToY0qm9agRG
	 7EYZpyS5+TkEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 757A7C001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169797769643.21151.8635251636035748621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc58b42de63b34f160c161d083dcf974966c6097730624508e1d296cc51dff1c
Date: Sun, 22 Oct 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697977696
