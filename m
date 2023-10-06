Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51670629
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUfLMqH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0F7C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696552628;
	bh=AfeWpcrUSlOGFxqyhTodJFOUwC1wk5iXWchAVMcE/w4=;
	h=To:Subject:From:Date:From;
	b=BUfLMqH25PrrFZoLrYxIMnVnnT/oRHcY/8CwH23Di44q0Wy37AAAwutYYDHSXxYiX
	 19UFZ1Q2xlKyn5DI5ocZpQsKzjVwKby2/zt6611dr2cBdA/2cLlJdEB4qNl3sYN+HN
	 gdlzDJdCneZO8fmWdf/7w3azJOett9mGSJvgfU+4Z0lJ46lWmsiuQw/jIFZtZhzVcV
	 u1m3xhefguFPHjUHihvYdYs3UFzeMZSnwwMQIU0ZpPalt2GtpmXRXGBHBZqP33B46O
	 9ya8+WbTl3dJAf6P8NXng4at7KzERbaBUmtjEuAMv/V0hdVZsohD8hq84yTl2zN3St
	 kkEzC5basAayA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DAFE92FD1
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169655262872.1358.8246582071992398337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521ab6f274803a9025dd873304c9c82b2b4e6e1f100d4f0df64fb4885a245671
Date: Fri, 06 Oct 2023 00:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696552628
