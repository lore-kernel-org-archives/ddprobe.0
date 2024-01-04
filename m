Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F45250E7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjnQ9k/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18BBC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704385696;
	bh=s9DHS44oZzS+v318pi2ELRwmvnBfFJD56C8GIzYhixk=;
	h=To:Subject:From:Date:From;
	b=bjnQ9k/9uwXk5rcX1y4kWkZRJrMf4orVMZjcui8wKe2wC8xA8TjwA6F/+vLF54g2V
	 lnLLXWOF9qwPwWwJf8J3RjOFbqC1GaTUFk+aHHOgss/n7D4kdyFfRgYLXfN0o0RuPS
	 nlDE5/harpXHgqAoafGbEhT+p6zdgAv6Z+49+UOH5YWkSxtTF4Je62PSussBfeDjzv
	 xnZPrJCIMtilN84zq8Ho38XJrdMJME6KhB5xopfz8BqieZet1F1BiwKzfhwmN1EQBm
	 YVcwgYxsfnYd0ph8t9nBkw7CDpZOdCfYeftk/U09j6/aHBsTA6iksc4tuq/XEee36A
	 UWwyO4ii7e8AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 775E1C47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170438569647.28807.1408094337121215634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ee76a2210eb67fae75ea57480c8fe0c0ff23862783d8a77d65fbdc640b8de8
Date: Thu, 04 Jan 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704385696
