Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADDFC2C5
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipxudvo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87AF5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703969296;
	bh=5/CfTURhiOjgjbTNvw0laMIjXdPgZfcz09DqfCHuaGA=;
	h=To:Subject:From:Date:From;
	b=ipxudvo7xAYf03waTc9mBy3qGhRZ4mDCtpNE8DuzLXqHyKy7o4uZMaJhZJ11otI2t
	 Zkg8KdC6PAzejmpiqCXYsg4seBOszq6rEQkeuHYra2KgfYniOx6oXSEtKMh0bTlAK5
	 A5Hdpd9ykybMcPRMqe4EFGYeD98oQq0rPcEmkanMxS7uhaM6str6EJTwgmradz+kyf
	 AIqL14JHksILYaXsT2NTpz35i3Ah9hiIt+X82mpsiARXSD1QKeH5wBU7i1NCkZuBpZ
	 J/F/AiC9nn5ZAj6sqjkjpF7let9l8w9erRpP/YuzPOoiP+1dAeYhlPRlzPwddPjN9m
	 nT8BRv081OPjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66ED5C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170396929640.6670.12890320939553209342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e384555f2757671c5b814dfcce5f8bc988ecd13519011203bede6ccb6b15a6cd
Date: Sat, 30 Dec 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703969296
