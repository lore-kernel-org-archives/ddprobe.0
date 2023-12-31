Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1094563B5
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptvAUHL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BEAEC433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704035296;
	bh=aBn2qFVF1P9wNfUhKotv5BCDypUd0cIabi5It3bTj6w=;
	h=To:Subject:From:Date:From;
	b=ptvAUHL0WbE6VZewIU47qcmNxiBMcLvpW13LuDblxMh2hn3RPKRQ+kj+/wolX4OeW
	 QrEO05y6BWcQkTzKAmHV3lBp+kC7hw9nnfby9Ilz7l0ZkewkusotdsZTZHVTLqqihp
	 mMDZs5cg974/HbazhTL6R2jOXDcXLv2J1Lcp8Qs3WCu2kRyKXmvpU4rLwqtA4yybff
	 +IqpJst02LStSlhSuF5N75P+4RfFKy4GtSccQc5CbQkSJk6qGBFbvMzUWfebIRaYf2
	 O8//NX2bYEEY3av39EBMVs7HrcCgrma1BJT82RjE+IXDj1uw49c8zjPdUNoA12zhnd
	 ftX4sO5AB/j7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E0BC3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170403529640.4827.14041728384700976465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951c89189b04415539b6d22dd0c3b76adcb0362fcac32bd0ac866e2626f375b4
Date: Sun, 31 Dec 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704035296
