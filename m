Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7545A65
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD91C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662823853;
	bh=TD1Kk/70EquvnABDckLohYFwAX6HHqPg5de/A/HcxhY=;
	h=To:Subject:From:Date:From;
	b=BIQ4nHJrn4D1bMMmMBfKd72rB729jXwQPUcAdpXZ55t+jiWaNXUIRzDo4mccUVQCv
	 thM0I1Lhx3M4lZyAQB7huKNaeXW7Qhe9b8s6hFthjwkP+OuuKtCWO9MizYM1+JJAbL
	 X8pnPNqdbVoCRhNFHIummluuh528i3xw065ytROVV1B6oSYkQGRIuJghxYRXKxRM+l
	 iOhUdTkWkZZoGpG1QYEILmCOZtC5JBFdn0DTUisTendlD2GYkUZoJjWx6sRFY8GUfD
	 Lg7Qj8Nvra2D8AxcQVDKtj7Tdh4FVU4osWCDdBx1z0+amEP4VScUtB/DdUc006JwaU
	 WI0h47OrPfuqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E5FEECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166282385331.31444.18261255814973650309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3815c95191abc4b5030042e8abc5b43b420c64fe34420218ee3df092f15a444c
Date: Sat, 10 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662823853
