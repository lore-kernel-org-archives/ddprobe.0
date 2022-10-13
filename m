Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C418E17C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76617C433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665624653;
	bh=qeqPxzw03AY7n7MZXf5ZyV1eJ/Xe7qEtIZfISweGtfo=;
	h=To:Subject:From:Date:From;
	b=GBM5sqx81mtA5WTEs6ngOQ3z02mbfxoWHh7z7Wi4svxMmj1MjLWk6H3K/dUSiRtaa
	 h08HnZMpeqs3rSBwk+8Q5zZdbYmobBdOg4DFwWogZK1UTjAXDzprkRvMaSWxZGv27t
	 qutztWI1rIQNMk575Aio5SdA7tVBRz4FcoK4xeob1YfGe2/HgVqCBvy4hb5HDKICl3
	 23F1Fjiaaj7JUDZhmvqA66UOZqegZSQYihPvV688K5tMwstH7HI4SbJyqazSoz3ZDZ
	 YHRJlxycIHKFMPEqIJtytHCEqv24glSdjENt4J34eYTtW+MsJ/GyZG26q/QTW18+kB
	 qKNcrgSHEXe+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58663C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166562465335.1425.5203906599642541190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbca25c9cdcd6b2c2cd4ebdc84c22d08ced56c7dc0a4568e593c0974c232da6d
Date: Thu, 13 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665624653
