Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC738F5C
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 010D6C433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680299586;
	bh=3cGUSlNWCiIXrETO4YMRvcj53dxWq+LP1jKrN+hvwb0=;
	h=To:Subject:From:Date:From;
	b=rXHMFwYcMr2rA/sw7G44PDDiyUYF+jx6pBHxgFtlL/U3Tcux9/ErQ6C4PsJT9EtEp
	 jI5gb8Fov0hoHMTbBVyLmF6RTZ8f5VIIr04prmuVZhmLau+IgYwmlBZXLL+ja5w6R1
	 FU/w+6iXeyACyB4cAB1vTcFMReTZ3oRLtcfRfbWp6vhLYojkUmyRtGibGMpEEuGh8n
	 99jJ9kBezacupHN4qi7vL/Flk4FkjfP2J3lisXwgE4D7EMnBQ01DOFCngJcKdzXEhG
	 WfsjSTNAWTA8gv3Pa9xWA40YcK05T9JLwPr8aFIxcmVhOknqh5N7C0vTnciBMkBn8n
	 rG9pYYP6F/tBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF70C761A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168029958582.14024.12558210847942201174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ecf24bcdeaf37304ef042bb01b5db45a848baacfe91ab42f624e0424bd02ed
Date: Fri, 31 Mar 2023 21:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680299585
