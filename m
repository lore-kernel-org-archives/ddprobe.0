Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23CE7E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A03C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665364253;
	bh=1XPRn4F5RiGPE5MRVJ5+lO8uepHMmBjcKlPjK8Y4Soc=;
	h=To:Subject:From:Date:From;
	b=jbpzGOz5F+R1EoaBSB7zQ6FLXMwZMEldlB0Z07bfVwXEp1G9ofWABX+yhr/Z9dJ4H
	 R7eJ8X/diPxdcev2rF29ZiKa1CTsY17WrDdz1Y7T78uCwNVx+4m2PuCgzO08KYfFZK
	 7iotukZnafHyHr2EJsniQ78x/svqpBKxKti2+p5jIH1sXW3zBVqItmJ8AAhqOaUI3L
	 R0Z5keLRdOd+kBiJ4dYZQ/yfh5C55DkN9Rn5ROOMhFHLcJpaD+lpxGUT7RaASEjEKy
	 BW/rOaIarpeixsDr6ulGnH3tDhwrgkC3DfvB1D3bJ2EvIbv3lAMx09bVdkgWD12HTL
	 Qr1owqXrC9APQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561D8C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166536425331.8568.14325919412772884195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae77bf26785db1b97e593a3d72a20c67ee22a7379db467894330a3234450ce7
Date: Mon, 10 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665364253
