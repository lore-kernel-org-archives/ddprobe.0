Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3254FC14B
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SX02nLfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94B71C433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698619696;
	bh=DQjZNSF7vI33Y92BUSQt3hOmaTmE/AQ1I1VD5dWxHPo=;
	h=To:Subject:From:Date:From;
	b=SX02nLfnE8dkvIcIaILRoc5ztUk3mkwAvg9yZAYUqIjRYAEy4lP4vfcazpGLX4j51
	 SX0XdQfUCItyZ6Mzu/5Q3PkRLEmZPdVYHRH31kvh7Lk9Nb+jN/4V3g5pkDhvONTSay
	 HVmM8CSRMoA9KasX3nCY95f7A+L2JvniylSPOTJ6AelthxWpSe7dF1YioGXzqubeG/
	 iY9itlXbnF8mMN9UtD+AICwnDUbjfT3EqJzHxLW4MJBGBn1CB8v+30/fq2P0ep0C3Y
	 796S1AwIfXmpQIWQjsKxm2UjO7hh69RTrFGhGdrmRfCb/X6rjOd87yQpDWoYLxbTNw
	 2n0Aug9cLs0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F33C4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169861969640.13740.11064178964495538533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5ce7cbbc917a45f447c49aa0a3ad0804f2c488354b220a29cfd416b4586b5f
Date: Sun, 29 Oct 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698619696
