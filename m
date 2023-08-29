Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 874896FCD
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 23:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93F3C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 23:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693352048;
	bh=wIKQV7hRzYcCu0zgCcPDjgKdHp4s6AsJzr5ac2j47Sk=;
	h=To:Subject:From:Date:From;
	b=h3mveT1Uea1P/bN2IAOpaSHcCuVJphb1z2h2SPAXD+CfawexHEsUSgZynG9hZ6X0X
	 bOuC4IMLq0PbUjyVpGGKoLqnAZtFko5fO2Gb/Rn/PfL7gkWCxzUaUD7l+7SvRJ4Qen
	 smqNkwOzi3ZZ3N3Pe8/2XU+io3U7VBRASNiYuTCuwJ4VeJPjyTkU97eKkJ4qDdItR0
	 +UeR/7fJTIh54oPx09YwQZOMTA5oTvMTz9QAt0/xwErpyxYsKE9WrhvM3Z3LUgEZ++
	 eC5dB5oJxzEazYrrnXpjJk68jFx3gkRWtHbedZ9ve4R44rC+rQHnnXiS5ojJFBQ4xo
	 rA4Vaemhg/5xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F82C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 23:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169335204871.26957.3272795599287544486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 439563072699725455f1cdec3d4ee78f37821997e9b97dfa52e6b7f989b2b927
Date: Tue, 29 Aug 2023 23:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693352048
