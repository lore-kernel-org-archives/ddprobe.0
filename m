Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC04828EA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 724EEC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665594653;
	bh=yrUDQAgwNWyW98ZUJ3ycLM/PiwAkBCd+QEHLAQB9z/U=;
	h=To:Subject:From:Date:From;
	b=oM0MRhs69agFhi+MHRLtSwa8kXlsltLdVxIqB+TmufnFsg0YxL34kSx0hMRHyrGCp
	 W6P48zzxmIyRLgY5QBTBq5ZjJ3o6MBEOqNGSLoSFlThETOWXVHAHkD7iU3Xgg60CG/
	 XP2zFkctmjFBV/zRQgkZdunOXeqn++2hYN0Jyk9y1WpzFYG840ICp7WmR9e1xFCmA1
	 EfH1G1L5nmW5tUGa/BX5UkrF3u8eQCdsLJUyC4cw0HHXDZzg8zdPNwhE1fptUFsHsd
	 BUjZ61zqbJUoL6KVI33GvzkmXZcjcdzVjDS3ajG7ZU2XvaMqfV9Mqo7meINsyzQm3d
	 QSIj7Cwg65tHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A47C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559465333.25172.727520090249686917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d73085838ff7e415eeb5de566886e26b922a789049b1563527950982fa41cb
Date: Wed, 12 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665594653
