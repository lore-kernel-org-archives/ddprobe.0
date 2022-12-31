Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49397E
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A56BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672455687;
	bh=ws8e9qZagTfzRcMQD4m8IS42vrcSkTdPBL24Nmo7SP4=;
	h=To:Subject:From:Date:From;
	b=NkG+eEx2Lmi5Nj9OZ0I60rMRLFDqp33K/xQjZ4VZZ3Sz6SijQdVlDp05y/CgIPSua
	 wBKNc4RmHB0xUFwVs1pQtgdkX2KrgPAaOYp+HZoBThzu4aZkMh4byxA8jp2HOL/Wpo
	 E7Wqu1rTBm8WAudh/eHjFKYClE313zoi1LRiRsHP/ygkcZ22xOTt6TPnk3ScdjKbk1
	 hYZZqSUxtp+fo1JgdlfFAD58mJryhqjvl0768TexSUMpmXBcu96pVwdpJTvkAlK2SF
	 RgjbkTXDJx+e/tgs8ALOcFKEvrcVYTumd8++vpFjq+kata2TKz3X1aVi0QOhwEeZpD
	 iVza0ug18UERg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613B4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167245568738.1550.8931552941623155074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be2e26b6f413224a0e9b46a3b8f4a699559fdf88eb406173b65f0722af1c2ea4
Date: Sat, 31 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672455687
