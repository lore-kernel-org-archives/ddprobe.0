Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510077B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 08:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05D6FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 08:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682410506;
	bh=vJ3MoxE8EoSyieTzeMc5VTs8zh3mplI+hWVzZvhaIYE=;
	h=To:Subject:From:Date:From;
	b=E6u3iVWcfmcchGdzKB2CgTWWlVHz6oWnr21c7zdfficS7RC0YthenglJDJcaVWacm
	 Nv9MLmkeXDGo6ZgkbbpHQAgAMzd3UJ7SXUW7N603BecUHuGLKvHUVCD0Q5NqhqbJxq
	 3SIu5N0XhtbUQ+3lIx5zWSoTSyUPGy1NUPBJ0OZiIgSAAq+P7040BRaXr43BLwqSRv
	 aZIPaqQs5sP2NV2pDwLMyhw+7hEoxmaCd9jOjO9kFx2so29IAkTF0WCus5OrRB29BA
	 E7gDGqJiRvCndBVjRIHyiFztVTA8QaVXBFrBoBWVJxtwRRlNAR9QBj2HxqJcz9D+CG
	 pPwdRuJYNcOKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D522EC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 08:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168241050584.14036.10672583450189882920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3e44a45b52e142b5faa810bac7d5f26a060342d61b3f6ab86689cac76a03cb
Date: Tue, 25 Apr 2023 08:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682410505
