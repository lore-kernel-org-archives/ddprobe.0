Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF1417CB9
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8A5C433B5
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667432454;
	bh=K5xQ4YCLiL7Xdv3KSH5/3vhE6fmAhn936u4eRlluPwU=;
	h=To:Subject:From:Date:From;
	b=QZ/9rsmc9tAwRhObIQL9Et8iDDGsDznJiZtbrGfdKzp3PVp5Fk2sDbt1xV97gx5EZ
	 7uPEzvWTc3IIFwrsUjKtq4vYPAun4GCTK4Nc+zc9Sk1ZLdh+7DDpAx8bDHo7fdIjtY
	 WWqvyIuEowQWsPwcrvf4GZwOHfARtl5akL8DbsO9Bgm6q1h12nzhLBQTqqa+yH6OUd
	 sSSlQ72Pmttp+KV6QfAathkhbKxd14NszYsqGmRqc6qUFWNm4eGiDgsyNhlTDmEf6T
	 yaoRsglQWnFKhB6CeA0ktEBxDEChPjampa3rOqqzENtHF4RuWijlmbfdsnb6lz/I4b
	 RIevgwbpqibDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AE2C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166743245432.30593.17362070046285274897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13c78344127629653862e18f5ed0b9ceb72189e8dfe501607d72d9a3a37ea131
Date: Wed, 02 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667432454
