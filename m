Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF00E15CE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94EBCC433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668661854;
	bh=aaJpLYDIrioPJrTXi/5auRXVYnY9X7V9y7aymMO61pE=;
	h=To:Subject:From:Date:From;
	b=RZL9kOKD7RWafe8FYfS66ItjyEVwezh76Ac7ItXP/fqD2DqfT8GrvewgkRo2S0tdu
	 xXeKt/2S5dVD+ZmUV2kLS6g22+ewcc0V9zmzdJRBcFL04V8w5sFoR06brjZPNyNo2g
	 4S8Fu1AN/lStu5SN0W/b1+K813y6dwCoeIAEdcPFe9uhRtUPf5xEmhyyuVRqUgo1mP
	 p6L7d4Bqfu3Q08AOlegtpyDBUDkM8SU0+r62xiJI6d3nAiiv+EB8kqBsQ/qn2zcGuf
	 kN8vPzUzF5qzZGhfwxQ7rX4g3x5oKNbXtBrwCGei7YrmQhRRUHy0CNr2CrMdgfj5cx
	 tNWOIbGWZgqwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72980C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166866185445.6151.9517087186263956224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8ee691d2dbfc0aaa55dfc66c2e5610866037cad8b33dcadeab406b745a9969
Date: Thu, 17 Nov 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668661854
