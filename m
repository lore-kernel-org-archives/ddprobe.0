Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECDB4437
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mq6DxNu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 906D1C433C8
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700188696;
	bh=wEEvOG+V3OXnXjwjGdoqaQFqRESVOnGBsPoRtSUbQak=;
	h=To:Subject:From:Date:From;
	b=Mq6DxNu5RftpKt/D04AgRvuYbbO9BG1IYMoe5YDBZDhUtEteYfC/IJM0KRwWC6Rtn
	 WQJ0+IZ4A35+2bKL9bVA0kjL8d+A95beYVYbJFhvgBasCXGYeAIKBQPMLuj3FpmyCh
	 fhLBfgiF+UcNjLbe/EtuQ86MVPJJ8rESLO+D8GkvY48j76qPJTb43n2iybTkDyLrmw
	 LwybTOiwptAqopL2GiXHL3GvnJISQNRREDcVjzllETWtmtq8kiKAX5MtHq/od1Pl60
	 /3SgwvzAjpoZvn/QAiTjL0tSRdduhgmn/cK9I+tU2ryTDemew+BuvMr4+qW97FFaDO
	 Fp3dSdwHU99SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72CE9C54E76
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170018869644.17685.6034666423744999295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12bcac9b98244736faab74a8e30140ffe8131cd03e6b7a720c648977e8cb130
Date: Fri, 17 Nov 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700188696
