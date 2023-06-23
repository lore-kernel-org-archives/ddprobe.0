Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C69363
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 01:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F3EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 01:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687482788;
	bh=GbIyu9spRGv0N/YhsPGmaqFL7B8GnEYYMrLcLIyrAO0=;
	h=To:Subject:From:Date:From;
	b=WfhzcRRXZJqsF61chFL/aN+L8Lt9ffDwR97obwBgEFV4JeyhhbznrNg4yxKC4IaOq
	 KJIRPIkvH1G6lH82jMGzOHIlblsC28s2GhH/l7HSaQ0PY8bJikPxsc+ms90bEVQ0ne
	 Yj1pEwDmeit5rzDBwjW960PT9Z8UUJrNlRkSSgpxiPPls5UGbGi2R7qwT4NxQ0X3de
	 fXpePJH9V7Uz23tHbE42Rd5vo4sf65tXh4Ew/qk4ybascnQ1tjP4lgKPeelXYZD3lC
	 VvJbivl2x92g8NfyBZDrug9l6/LyRrcc72QtDyGnmPey2pZJftbhN2jSSOt1aeq6zZ
	 u/ICUzO06vx8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C175FEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 01:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168748278876.23833.16469991702536034864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc18ce203d79a96148f1fe70bbd7d4b046e0d3ca280f1e5ad2b04bc363522964
Date: Fri, 23 Jun 2023 01:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687482788
