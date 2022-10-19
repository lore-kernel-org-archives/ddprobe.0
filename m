Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13037E
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706B7C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666167653;
	bh=r2003HGgRbTJ8fgVONWJx1IMTzpWcaexPT8Avt9yPfs=;
	h=To:Subject:From:Date:From;
	b=QDbO6IlwrLrFHGvr9fbwdVo/qxSqvfVEMIKPxNvnmc0jaKIWOAatX1T+JVSvWWAyc
	 2ya/h33KQyULKbAtt+swtUlHOalKgrPH5HoUGgzDkH3fCAFmBJjrRJaLIIUv6nOW6x
	 ZgjqyXwcyx8v20UzhTfWheB7+Lfz5suzFTOjDOZXZtM/fm92BgUy0K54+0zSfd/cTD
	 g74efDCZQQU+M6/vMmx+vZitOrl6FUhV/9RffWLdW5YOyzERXqLjfBCoKJQcGz3WuA
	 jbSRsuLxX26v/zE3hq8FOwsJfH9G9m5XUewvQaxK3K+sTYgZoBHbSemiNNDo5+7MRw
	 w3O4BII+ZNSnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CB2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166616765333.3623.11155715907341018989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f93a777bb773be25389903813190661acd71732b06b3804474c8cf73081da1e
Date: Wed, 19 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666167653
