Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B6C80C
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B1F4C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665834653;
	bh=guEHqEfFSGyC9nrVrG5uZo19DZyK9bbJoJD1dmj9Nhc=;
	h=To:Subject:From:Date:From;
	b=llzu7aP+dpXVxaPEvNA/1JKz0IQmikhIz4XU5RwkHCT2qk5f47vCHva3p5ittNU2m
	 lnJmNEMcAdiUlWlJa0bWnXwwioub4zskaOmqXH5dxM795njLkv3g+HM2uCSl/qXbsc
	 2gqFmCN4XJPo+/KWF7thqsIahTjzigGEL1iJnW8eFGCKUgou7Wq7Jsx8L3NfEz7dFt
	 ZRUpCZsf3sjVtyZgWCILUh80tbB7+iPl7jWfF7fUCtwwwuVa3pQa4ILFX0VRm5m5gB
	 wvwY4pwdvpiGObt6WfIqmQbPoSbnFiuBDBZNusgIcDjLnNM0UT0KdaeMf2XgX9l37Z
	 FRG5ZrGrLdGFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5561CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583465334.10399.18256356726882578892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b5ea0d8585e08126be4650964aa303316b6ece95c26d3a3225590992f400a4
Date: Sat, 15 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665834653
