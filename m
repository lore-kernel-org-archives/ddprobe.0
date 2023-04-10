Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8E32F3F
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 21:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE8AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 21:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681162325;
	bh=dncsbG8kgEV9tG7GAdJeOJYQLrtoKhl7v8q+gcBmlLA=;
	h=To:Subject:From:Date:From;
	b=hpxdy7g6Yzxi7e97j62MWHLu6Cb8GAoiZGdaRykUGSVXU2coKfen/iqP2FYtigDYW
	 8GYCsU2AW/EiiNnFEaCu+rZo1CqhuBki8oLUCZaqG5uy0w71RRVLvFsOpqOAE3Jl1a
	 NiwfKVmZcm+CCpsxDrJykGxlzBmTs8HMQNkz3TuquYjmp5gwi+xI3snVEiRpdWccGA
	 ybVmviTdghqyvltqHdEBVQgXu2nN9d13+KpuVLEb0FMA0y+NQ6GQQlWenAviwMOjXH
	 EZtwpgFcl8DoNur86JkTeVpriKIQInCMdC13O+uxeZk1KLfz5OG9RyjKdvUhp8F5uK
	 QyoWCIVUss7mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF861C76196
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 21:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168116232577.3041.17342384604906450461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d511a31c0888c534b14287722be44ee959dd3e3a726d628762bed924dce0eab
Date: Mon, 10 Apr 2023 21:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681162325
