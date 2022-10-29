Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2C615C8F
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DBCC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667022054;
	bh=G754Y9+T5DaEZDe394YAVk5Mwz1D//rSUKm1pgS8Qfs=;
	h=To:Subject:From:Date:From;
	b=tc+HrRFO4GU+E2j6r7KZJUFaURJjIS43aKIJvllUkhp7mhvW9m49pZPrLPEXw5NKB
	 pyTG09gcb0Byi+YJQnR8g74fDq0w5DJunAKJENCazZFwqEhOwmHgJVJXBtvUDGmgFa
	 Cdscl/Ng2NIR+kIoUbTIzv8nb2/ZmrVJ5ixJ6XotyKaGHKLovHfyl7CZUVQ8xu9vVO
	 Rs2/p0dVpjfY0rNgI2yybgMmEHO083BQVHEyq3tB+ss/+YaWGb7FUTXqDZcydjsu02
	 R65gefg7Y5D8EElCjXTrQlqidmmy1P5P8Y000uE0+Ii1jdlT6HzpW7Cfjt2OlnRV0l
	 8k7boM2oLCogA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D78C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166702205432.1671.14123934493286896587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a463298d6825459af172ef006228c0bf024dfa896403ddf19d4f8a485933a14
Date: Sat, 29 Oct 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667022054
