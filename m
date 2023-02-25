Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B16E194
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D660BC433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677343505;
	bh=kPj7L1GY4+eq//thwl+d70fxAR+1W7wX4uZAvwbHZLk=;
	h=To:Subject:From:Date:From;
	b=j6MYA8QriKTrZSwbmzKqdvhpRN1kAj9nis1h902PyS8kjekR95F5ctDcZydRtiXn4
	 E7VIMICNmCh6LvaezggsUOoO0vKRsjcBUOVeKE0KhbPvbS101HkZYifTpjo4slRr7o
	 /QywyuSVse5YdmR6J0rlNcGBlTl/NkUDUQg3LXrbLbl41jUJ//Oa6oWXj1WlklV7Wx
	 ulhrPdiewIcWsxj+jNn6fDUy9ppABLkmUxIJnDbNoqQ1/g12a1eCzoyhW6iElsN4J9
	 gNsV8hrUyQyeJgOfoF5UQETXgRkwSmv1x9tI3mUTXLS7Lx1WZRji2Tgx0L3sT99Vyi
	 Pcfxfz7PGUOzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA06AC64EC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167734350575.31738.13803602107428380070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c93f71b478f72df2fb4b72f408858b71d8ff411663405713d1ca9b631342ca9
Date: Sat, 25 Feb 2023 16:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677343505
