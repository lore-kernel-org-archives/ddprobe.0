Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DAD8F59
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 18:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43CCC433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 18:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677089045;
	bh=Md7VExMnPKzu3S/hxeoz5kSUY3RkFAGbCrO0mUtwqn0=;
	h=To:Subject:From:Date:From;
	b=tWRwcL2o8r/AmhFhSQn/beDQ/GzaukUv9RZGh3TrqH8PMYeB9vS3v0R9sX2GngrSj
	 31kguRI26jx07gTWT6Ca8qWIbyPtdBfsve6sY4yr9Xkdj2PXVnE5wGJVV6A1UBnrTk
	 0gCmuxfVJME13DC7nZoDy5OwNQPxvwFle7YnsMIBjnpRn/jh6l+9gJ0FjrVbZ1NdN2
	 2OwFYEgVJvgPHGopAzkg2L3VyMh5lnd/T7tIEg+ge3oMWoAHhAFa/ZIMWDw+ZA9ucY
	 0ZRFczmxHatHjGdX2/uEyP0bg4Qz8lsaXM6evNcnkIpv8VfetQxNUuK056+hHFCeUM
	 uPtLderBKsKzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B776AC636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 18:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167708904573.17879.15350134379630827219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4b736067868f1bb8aaf107b4839c3de454193f9f715db8457e415c2c3e0b01
Date: Wed, 22 Feb 2023 18:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677089045
