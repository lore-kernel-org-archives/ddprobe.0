Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B35364
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 01:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C9AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 01:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682817365;
	bh=yZP21UHaisFuwezqsTwKj/9H30ujSwU0o423MSmEpXo=;
	h=To:Subject:From:Date:From;
	b=uD37k5BDnLvDTz/nkanQkxcStsPfwramrUgJpaTX9RRbynO7RQH+a9vUw41H63o4P
	 fS1vDU04YVuRwCSJLsQy1ytTzRd3++4FRN89qjouFVK7dRWVsuthVTl5EPbh8L9ItT
	 3WEEZtk5I4WCCJPdXyOAuLwIp35hxJ7kGr6TZi4hn+kXdptrwgCXy5zPD9jrcGT+KO
	 1j9CtRcFTZxQ97fF3FI6j3qVkQlp5HDLWRFYcrW+6Fk8MMF62N4sVLcuYwwv9f1mJ5
	 qoyOviNN0UhlycoTRaEDRRmiPQP4BymPGpiLfA2bMc1mEJbMZ8hbZiR95unERp3FLT
	 lggMqpOQNoI4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9878C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 01:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168281736575.7721.501798081024546257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5637c03f7b542c43f042a6dc23b405b333f34cd6b6dfa0abec76267394e33889
Date: Sun, 30 Apr 2023 01:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682817365
