Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D987F4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A83CC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664278853;
	bh=bxniPTfl0fxTgXulJDtYcq3YnCtWEakG1ZcQ5j1e77w=;
	h=To:Subject:From:Date:From;
	b=e1tGkQ8prlP5FnuEzeJfL042t7jmLmiMxe4fPRDE3C9h7MDciMBLWyPaMXH9ZmGNf
	 QxQtIgq7sZAfDEgvkVcvIpEG3ASuB92wfJ2szpmXU8zar7yN3DHPyWfaolshcJ/Q2k
	 HM8WiajgHLn75BB2oOA3AqO1SyJpvOXniwt1dR9tBBBz1j5tYhnjW7VbVfKjPennuu
	 a9VgZ/88Sc756y+QKnEaMwPGbd5bQD/2pbuuf1Kjb54RgyZRRNXxvYIn6Ev7UiNLmv
	 2MSU8xS2orkIAm4mO7rn2uevkN9Yt3A+EL/Q8WzIEHV/r9SpwTVH+0nnWPRDGD1cGv
	 8OKIQ4J4zbbxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5270AC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427885333.32664.7129757844667039754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6193d8d1c91bca4eef756e4758e276c2b91cee363e35441376bb72e4e086074
Date: Tue, 27 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664278853
