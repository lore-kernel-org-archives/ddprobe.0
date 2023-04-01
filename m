Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579243205
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 11:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10D9BC433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 11:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680350046;
	bh=Z7obUt1pmbr7hebk1XlHCxOOcL5irTJRuRpSJH7cK90=;
	h=To:Subject:From:Date:From;
	b=Ar6V29e9pZropJI5qqY7smWJQCOfNb2CnhBUmcjToWh39EUhgy3at615y02jRhuRm
	 DmibsW4dDidsCRn6NIN9OehOPR5awStYOrVvwm9Mlp1xEKtnzzRNYPHKI0JdM//LWj
	 g9aP7jT3+cHXzYri9SIWuNx4g7yrxEAzvKbdC5ttFgNDh93DFoRMArpZknCg6yqqgc
	 NAjKj8lueSlZ/xjhdgm1IH/9bIVb6YaAvOxPKOk4lSgkYkrvCVhCAEmCQP6dh9zoS8
	 G/F6MZKHOfMWMslXcfS4oUyMZYs43LIvO2jdf/b2Yxhef40Yv95hu421q6+j3mfWKY
	 3aBDjTzfupGvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAE2BC6FD1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 11:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168035004579.3037.2533288411719679676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4378f87b99962c6d43cf497acda4f2a42bd52e87fb125014685fb6ae378b3e1
Date: Sat, 01 Apr 2023 11:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680350045
