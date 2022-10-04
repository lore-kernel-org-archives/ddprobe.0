Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83044438
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA98C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664925053;
	bh=I2CVGhtCJj98f6BMS5XMFmYrf263UC6JULeLX7moabM=;
	h=To:Subject:From:Date:From;
	b=R+x4+9jvjklT4OVUCrbWH+a/r7rW3HcZB66qpEEv103RuotbarGayLmB6uPZZP/Vg
	 ZZbkrw7NWggSXDc7YmlsNkTGIvYqbOj+bI9nyAauH12sVRAchlYJ4N+GNC3DJ1XDN5
	 r5g9XKvmRpFu7JoeNAh3OGx3VChyDimMYgT590C+9rnsN4yhV7cTvH6sSX9viRXvxT
	 Z1giDJjBJt27o+HZGZlvbGobMyvkgx+Y+amyvlbyzATEH/JbFXSkk0eo20rZnPj/uj
	 uE6/sbmeG0Vl4Ixo1mKgnggYEizUwcThH6FPOKJJyErxeWs6iuASrema1YSM2Jlowe
	 oeZtLLWjC5lOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545B1C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492505333.7721.14091870650765080522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38451a2b19f72867d167b46822513abdbc1332d429817f9ea309c890e9b233f
Date: Tue, 04 Oct 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664925053
