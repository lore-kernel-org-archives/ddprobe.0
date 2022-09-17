Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF15C7C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5CFC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663427453;
	bh=p1gV7ieCXr97YEpJT82++ppxA8qRIsZwfWvrIjwgkJc=;
	h=To:Subject:From:Date:From;
	b=JwrqzqK/MyF2fAJ23mTctWaJsMop3u04aZJGdo+FAzNT83O1mmSQcbBniid3gojLl
	 ocQ6J1ckyuPLRhGn8eKchdvg8U5TcK9CWKum4DDADRVBWPWDBRXq5QRW71nNNoFBxL
	 6/TKLCnI63c8MonT2D7jekAgkyibMdr3F98/wnVP7REQWtk6ztCuCJ2RlPwgezmLex
	 inB9F/uslYbEkvfWqYT1bygR/bH8vanp7unbSwIG+YivtqC23oyEKn78G/xHP5lb2j
	 iQG/avQc/rZ4mEa8BeAMW6oSLMSprtyf2OOCy+BBaVO0qrnkM/+yZFlu9M51DoN0cQ
	 lH0IyaF+LIgqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F21BECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166342745331.10714.17963766366404597461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935529efc4fe7945641e4de0ba43090807613b56b434724277cb358572b16ba8
Date: Sat, 17 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663427453
