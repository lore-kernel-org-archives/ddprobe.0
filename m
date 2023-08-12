Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB2C7472
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 20:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B01C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 20:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691871188;
	bh=SuDwTt7Yv0lhetbW8q/Kgq1/jLhK3/JQoXiqvqe9KCA=;
	h=To:Subject:From:Date:From;
	b=KGe68XAXkOSui0shi9WDappQl9VVfoGrMBcR52dieeJkaPj47EnkYYW2occr3rIAo
	 WQjUngNg9meuD+uw2ncVC0T7Ktit2XnrajL714TPjXj79SPcBFwECt6L+gR0riQi/3
	 ipIUJ5RErYpwHYt/7i70YzcyFEM0P5hllmCTISVEYGq8SmMAcdb9zNXCiyCdoFHbUr
	 Qse8nGK3rNaVhmjsxOq2RN2LHssKQxr1x6yrGGn7iHIyWc9JEAANvQz6yKFMbXz6z3
	 Dt8ISgWt8pOGuBNfg+tstyVY1T7WJy2MliCwVwWbKvOqzoVLWCYhShI3RPPIf0Ie3Z
	 k3NwPccPM/mbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB603C0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 20:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169187118866.21211.17780634439983358015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525e4df9abdd7e4e3f259915770f387a5d06e10e9be062bf237f23c9af61e010
Date: Sat, 12 Aug 2023 20:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691871188
