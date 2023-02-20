Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8B62F4B
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 12:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4525C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 12:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676896745;
	bh=ksUuQfFUEPqL2sYR0WchpHFS7UR82mnuhRBsmha+ebA=;
	h=To:Subject:From:Date:From;
	b=puirS+bkTjYm0+6MCYDeG/aDB6g1FgfzJ+xFEL/L/oGuBI0IGaiD8qotYR9twdPrd
	 qah/7qHqwhZuvd6hqIIluB+cAvRMA29BCP1g7kJDFxznbjMkJWMFtKTgzyQhW4mVmG
	 QqHGPvTxX2HLtpJcmIsEzk7cCymx8PLT7i6j98aGp5de5is1ZiBBVXj3j173MVuXKa
	 7dT+Z5SqVlvEO3ZtZQAP9CA6T+0eDSrzAI65f889xQ1uWgg6Mesq7Skwqu9xGnb5+y
	 hWxW9tuyDBS8hc6lGIycdnr7tqR7fvwj22p28nKwDK3SJYZob/7PrQ2fwwdE02o8aE
	 8cQglalb317bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBA97C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 12:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167689674580.26781.17716455578767946862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd35cd24ecbc71b5626b4b669c2f5f60a9e61168adcac6e246a5cb5367c5b1fa
Date: Mon, 20 Feb 2023 12:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676896745
