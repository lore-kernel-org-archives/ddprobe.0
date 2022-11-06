Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30442CA4
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 731A8C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667775654;
	bh=mEPsPjnYV7irDgdTQOeEQfdarjO+b+Dif3LejNzJFBo=;
	h=To:Subject:From:Date:From;
	b=A8k65nHvgZLz+dEngW1GsKkm8bj6vwGaTh7FP89QTAJGY3oBaYhUMfaqvY6SapbXB
	 CFyS0sTIf0hAa3YdG3OST80+ESdaodFwdAU2LHAD7g9e0KyRbY7HquZvZwQNwf5tGn
	 ybuCpgSaCE4RT6A30J/wJjNfDw3qmtZ7Ewz1Ef+e+ZU4z2lmyXjzjdEHT+k3Ia/JUT
	 /uHG+imxVS5RUKENRV2YVeIDBvooE45rSRBQ1OkyjVSCHbsYQUOWkuTLTdFzfaSd6U
	 wmw3NUypfvEq7qdRmgd3NofiFWx9bghy9mTULH1KkoSmW5lHZT71oPPYu7DnvKZZ9w
	 lbHQYK+KCUe2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56348C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166777565434.17834.11107604508160337083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8817306378d9eaa6b8f5ca3d9025b62eaf3d648829cfbedf793f9be79a371f
Date: Sun, 06 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667775654
