Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762D8187D
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6A2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692609848;
	bh=i+3HFRPwXCAvZezHY4zioXHEQIiDmwBfKUriGiFd10w=;
	h=To:Subject:From:Date:From;
	b=flpEaAMt+foRLKLe0Ue2sSxYkGbqVr0bIaO2Ou3z4Mtu/T85JlSuOMAgUPeeA8E4d
	 gKImYsgtws0TnrK7TcG2XirOyHcAw3MWrXRBww7fx1DBlApPny/nHNfCavciz0WJ/W
	 KdgR+HI94dy0KQoScpMMhGRmhyGRoXDVZev8gy4MVgMuFrhdpLxdhDg20gITRmqpj7
	 4CGOiDKP4PIzeSs+16lY3VAIuKYkrhf2nzLgMF6R7E2FhLNHWzue0Dt5fnuH+/rjFf
	 TJrgbhrl59gaEQlrp5occrfVk6w+XECA3qyZ/NlfzJ3morGZzOjmpwRR2PXbOovYYd
	 trXfDpPYnhNmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2F8EE4993
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169260984877.25866.9305784796032871109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45fe2b4e48b9bbfa862e557a3d3953e64dc52ae220429be9b870908cc56a07cf
Date: Mon, 21 Aug 2023 09:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692609848
