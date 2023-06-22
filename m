Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B17F1E522
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 13:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD04EC433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 13:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687438988;
	bh=9JkSOmRl0VIeYXtdJXSsoj1mwcHdJmJukajxR5Oq6Q4=;
	h=To:Subject:From:Date:From;
	b=Ik22enwEG8feDmugnO07f9JxOQiRCqsdk9EQloXqVtjUu9nzmaceR+230JdGs9r09
	 FgrTgx/66rYDDdZ+6eVq0pYgeieuqEr8HysYxortjU0d4JSeCzh9qS6YLnubrtkyOl
	 +0WiNfmwHaCyE7eP7wkvUR5BP+ROHYZ6rp6Z13wsUIk6pw23lgMtrRI1Xcn6oBAhhB
	 MGUd7Z1WWqzyoZmz8whL84VIxkolXVIQ2zbciUWVZL4LHAr6odyMdPH9PRdEp3ANEw
	 VsO4yLPNmLo21f228t5lwQ2lFjso9wNAftbdHvJmu8Mo4LxGILgEvX+E4HuMV1UqIc
	 hjaV7cDBHysCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE01AEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 13:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168743898870.28968.17828434538242537293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6814736d3629cf6ba5b642baa904805b7bccc466a647704118f2369dd9aaed
Date: Thu, 22 Jun 2023 13:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687438988
