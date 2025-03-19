Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE141DE880
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742389794; cv=none; b=LSUhl1XdmIBMhRsbycPMTi74aPDN7GMlWQTohh5hE7JGSWb0twbTWknlg7KVVnBNap8u5v4tAcvilvyARe+lkFWYXf59VCfg32wc5SpDhUbUia9H3VhzOFe5hlLL13BHKM6fVl11yGcltmI/3B1eO93QkBepXNOD2SyuqnCIdyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742389794; c=relaxed/simple;
	bh=4V14/V4coKu9ZhQx44pTmaDzVVLOuK3McA2jf3D78ZY=;
	h=To:Subject:From:Message-Id:Date; b=rS6xhJziIAg6mM/mHpT7d/6yAPBWDiLpn7dhTOfKVQXOeSJvGHzUe7W+1k2UVTDSeNNhAi1d6aAySl/ge/i6JJ7W+XEiTqL96ZrTdw50sVbmYpK2KVHXQbPG9YKQcMbglhEKcGh8alQSqqohpG/7UoZ0CRma9kSlhgiyiJvIbDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk9K5Xng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kk9K5Xng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C012DC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742389793;
	bh=4V14/V4coKu9ZhQx44pTmaDzVVLOuK3McA2jf3D78ZY=;
	h=To:Subject:From:Date:From;
	b=kk9K5XngqB1U7kf8ureBKsJlPqM/9qirR+hE9lORFSryTJdJWHK1tNHjHis73kqr8
	 sbAw9KwIZNQdINS8bB7mEL54AhIMSAAjIMTYzUcb5NV9qsjPQHEGOk7j44qfve2nTO
	 4Wbzz9+KOFh0G9VHLkPyRQMpSRFrmOPZ+pjztvzF4nZAdiMjEQYorujNIo1Ob6Jrlf
	 0y5PZ30HJyDZ8faoWAFTGbr1bO2Q3QmG2aBDtvPj6Rlxwf5Cwga2Ns6ZyZd9O2fc7w
	 o8MEjKZGL7rU34i91m9GwVeyw5bwdnLOnsILe0n5WeSixcaBmQjwI8uDLE7N7h42OX
	 bAJS3RlJlYIkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A944CC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238979367.4677.16094904179478793398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2463d7323a7145330042b22de33ecccb815008cc2500721756976473677089f4
Date: Wed, 19 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742389793
