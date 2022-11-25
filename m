Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD11D2C9D
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D4CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669386654;
	bh=ArWsWJoLCg09xwVDI0nKKrIVM18RDi4EfBRbHgsORgM=;
	h=To:Subject:From:Date:From;
	b=Rv+4DswKPTGjTcaQadgdKwA8PrpvDlyOG5KUBYuxy4BAkDfMiUq1BCjyHV4WL24Ug
	 Rhmy7x8oF4KNOy3mtWLhhAMRfX7d++u0/NgjNn5Do50nK6/xJFmhDFFS9Mral00ksO
	 vkeDEdwq5BVlyPFdDFB95KU6TsZsis+JmMkFrbjSJGWyAI8b9BmQZGjqwnYUEbGqfF
	 ivv5OJrT7l68pDaPUB51Igka9DTTwvWvXTSff2ekCiefsXWiUvyWo/heN4GZYj66CR
	 nLsspe+GbT8xqzMNuDB3/ojNGFPOTB8J3Pjb8sak09xDKkGC/m2I1mFibIkR39Djn0
	 k8pQx0Sc2ucMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F6B3C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938665431.20236.8717194397040155254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018b1c0814113c60ad4ab598839d8a0bc0ab3a046ac1cd82f8c4e62714ee2a03
Date: Fri, 25 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669386654
