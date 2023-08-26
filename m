Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574677E
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 10:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C607AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 10:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693046048;
	bh=113Vb+cQPbyprNEUN+4Wy46aPXGoeGN/ohW+poiFUII=;
	h=To:Subject:From:Date:From;
	b=PBiCdYJeASN6x9lGqcpQy+PPAEEXZ4Q0HgLUaGMUS5AXfAJcxuyG4GuIehlaVXszP
	 G63HMHtCMNtQwTQi5ZrmckhCVh2mjbP7R3H/Zt01vNy7zogKBxQ+UZ4czzoxqwWNUy
	 pwf/uERImJbo5rWtUjwvuKchwn4x9voX/HXTb5GStmO7JPO/n2yok5b9eeN0UNGjJV
	 roUY498zvldCzMWddV/uzA6GvOdDTWL/k2pnGJ26Yt46L/pRpYlw0MxjtLaq2M4ieu
	 JgHbGoElxRCQ4+kagq3wYZxCv3Ackx9drEvSMUwlMxSuKy1gZ6n0LqWl3P3eyQQXaD
	 0M2Z9CpyI4r9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A977FC83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 10:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169304604867.31266.2819346245556991982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e0782127afcfe083025440eba0a5621afe4da1b65015c8d90d262646f4858d
Date: Sat, 26 Aug 2023 10:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693046048
