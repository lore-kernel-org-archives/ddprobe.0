Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A5462B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94AD7C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668916854;
	bh=8U9v0ggsZzI4AsgU13ChFAxDLn9+5EEU1tdBSJp4GBo=;
	h=To:Subject:From:Date:From;
	b=GZ01eyyhf4nwAs/zMSljtWE0CMlCuUQSJeGUEDf7QBguaRqdI/+XLgo1/g1iX/JJd
	 BKQv6UEd9R0689/GugCs+PG1N9a/cl2njsTqDHUhjjv8k064OnYEawBfIgP0wVir6Y
	 07faHzAEWUmIxlp+biWYb+w7/mjZnrJd6qyJVIKMqTuTnrWdFNKr2OpBRjHLO/jzvh
	 AeKB+Zh1nuFO0CJLsmpAhkQ7KsmjW11JObFeyahI1TdtuhRoXT+oHhXhoYiWKCNkvg
	 nrSJSusDl2qKzuwG1w9/8XAwC25puWL95DqkrTuSQbqq06umbM/mVGUdLeVlIKwzJh
	 a2ydGlyv2Ztig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630DCC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891685438.10177.3823428053902321676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2828dd290af7720fd04e927e28837fc28f0a379a00054c964f5d56d554746820
Date: Sun, 20 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668916854
