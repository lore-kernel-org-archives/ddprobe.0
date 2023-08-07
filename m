Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5F519D
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 00:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0EBC433C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 00:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691368988;
	bh=CVBuT1YkXz3glLWUQdHOWwBV5ZwnFkMe6zREbsz4BUA=;
	h=To:Subject:From:Date:From;
	b=F/NTvqkjwf+5kfJoSkoTbKqL8h7FztJ7tvd3y5jy4qAxN3cBgLc2eyeVHtvRrfNJX
	 XiV/7lD55QP69p6rfFDE+cow6Q42BiPPLU59BN2Ad37yvNGkVfI+9/oNy08cAUJWqu
	 M1QJ7C5YdThMOUV0oaNWRIBspXoyVvwcUmngH45AuRdQbH0hrzNz3Y+naxfXJj++Q1
	 7SIvOtJ1Cpf6IbQfVI6sUii+t38rzo5XRov8EaXCvvfG4ZGx+/EpFZ5MsxwS1qN1et
	 j2Q7V378Bi+hxfW39Ep2AO1NCmZKzIwzwTJeAwBBgBKxQ1Hb9AfZQrwjnuOQQ8OUhK
	 VfcJbrilRQ6dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC26DC00528
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 00:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169136898869.10147.13837044653039409533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a410f9084bd6d83775341e81a2d7e092a1f7498ccceb704737009351afc61357
Date: Mon, 07 Aug 2023 00:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691368988
