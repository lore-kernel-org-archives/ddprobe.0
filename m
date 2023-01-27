Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3126233D5
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EC5C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674841385;
	bh=GFFuqaV4BAuIzELitacPsxESMewUo8voWK+EJob4GWU=;
	h=To:Subject:From:Date:From;
	b=GKEewH6IWbOH6FfRUZBsTHHdqKBjtoLkC8imjjFMhcTQiWrdK2/XLvXrLWixn438+
	 W6m32H0mpnU5NoZLs0w1Yi4n9ZaiAP34JDa4hNzPipBW4SUbHJFUTiHOepL3tZlH6H
	 GnuwcoFBzypDrNRLVuo0UAVWPNbe+qnGaeRyPeUxJe8gHjdjNKllUqALtkyqWGp17P
	 9Ak8Sg5g3OwEEJeZEylFS1NDOqDimZzMxso752z73Epj+hrFwBFnMGfvvI1Z0C21bZ
	 SEaohlmH2aWw5VVooDbbFwBRaGa9LAycfEMuM/MJQtsTf9FnZKAzKfENl///SYLGH1
	 YUeiwMmjtS8/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75D2C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167484138574.11374.11194631163878540118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e0fed15934b2ee968c72c18ba12292addb75a2c7e1de5e9aac6b9b55b61ea8
Date: Fri, 27 Jan 2023 17:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674841385
