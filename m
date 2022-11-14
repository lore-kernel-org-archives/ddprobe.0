Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3621864
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C04C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668405654;
	bh=b7yc9gDX4Urs5d/mI7IEnG7nVxC26x+LrbzSNHX5KTI=;
	h=To:Subject:From:Date:From;
	b=FFVVk3TOtuv+t88+XfkAi7sGJtWuHkzHYdNrSOy43RglY2oUVgjvUx+FVLPQFhG6y
	 chwETwDtwTKwylzWooUZR933tZuwcyNDYL9DRtQcZAaBUlyLuAast2697Te+423ehd
	 U5ewmf09poEhhz5C0yEh+KxGUOeEGDoedDifps+/Yn28GdL2icx0HxYkazefTgILMy
	 Kk6XwpHk5Favo5DUhDxAnuOvQQ61vwIey+mjmk57FPjVv5mmp5pZhKeOkmJfatlEYS
	 jA5lCuz/WOtaiSjQ1hLifReF5GzWBxwaft8rCVS06QsbI9x65LvHJbIAiM7ANFGTWH
	 S8/KEW30QbPpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A37C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840565434.11819.6185535596719908473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7febf2d0b40d7a02eb4a3d3409fc20579cd3e7f5d0a0c93881bf30eee81d00bd
Date: Mon, 14 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668405654
