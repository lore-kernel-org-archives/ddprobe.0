Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E00BD12
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8290EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674186687;
	bh=PtuM+HAL89e52OvUyuuP1MJlm/An9gucQBmwSMyOZwU=;
	h=To:Subject:From:Date:From;
	b=supjRcz2JcwzCs6ovCLO8Eu+cFdavp65yEVRFJVGtGhHasx/lIG+2x3IKVkFk4yR4
	 5rrvUc4VeJTMtm/dusNXGmAvqa46iQfJ7me5+a9kCZ1ee0DEZrHtx/Hc9yjaPeMpUH
	 6u7IsexuBKhpr56JOFWUR9IdfplijwxrXoHiNMLA2UgwoUPsWPM6VftF6r+wwjBijW
	 nPokHIuHO7Oqq71MUhLF6WBuhn17+t4AuBLNYOnqRCAL92aHCLLH82q332sJDIeTfk
	 oks+ERUPokRUD3cUXgRnLHp5qgIdEx7G7R3h3AnUVaF8zQ8oT/gIABj7m6WewbdnEV
	 9nZmUuuuciO/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6743AC46467
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418668741.6672.18388982610992415537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccaf2238963cfed06e366f49714ab8ad84e478cf4b48739b2131afd137ee76a9
Date: Fri, 20 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674186687
