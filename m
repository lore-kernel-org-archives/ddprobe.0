Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA9023C0
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C4B3C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661499052;
	bh=HCFOKMHWluPoOSWqKyR90MP7cAm+Nkdwmhp1bJXLuwE=;
	h=To:Subject:From:Date:From;
	b=iimOoNnA69Vk1b38WDvf5uc3T44MXopOpOq46kCzO3Flw0ZwBJl6mfSHQtEMSOsSN
	 xVPHbL2ciZvFmHsOqCsjyqNlVd02K7ivd/a0h1lDU/tPOmfW15QdzzI/9bvPW50EIr
	 9zjhYjnCR5Od7JisuUwZ0kQtKX5XqUKK33yzqsAB8UqDaKC81vlarVcvJEcORBLpxV
	 wNl42B0VqeKi1qHRrfpnAE5YMFBEDr76wh/ZMwiIQSHmkW8DQOg6uW2oeYvTvyrjHg
	 gqlUE51vFNSovcBUdQwCHOBmyodXVX3+bx1Va71He5JndGUyiVkWTUr5+h6RlBX1EV
	 CL+jQjqP32i6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6471BECAAD2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149905240.7536.11982744220543389675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd7e35fa66e8f2a2d78bb72f4ff82d699816ade9165555ebe8b666519cb8bf2
Date: Fri, 26 Aug 2022 07:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661499052
