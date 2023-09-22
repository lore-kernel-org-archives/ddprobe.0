Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C429323E
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 16:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE23AC433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 16:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695400508;
	bh=IHByGh6dLlFXhrvZooiTOOfRI4xsKBebw6LIcMYcvSs=;
	h=To:Subject:From:Date:From;
	b=dZdW87S3SNhs7089lCBWgNHOs/UV16CMxYa0fcO+/fokezriY6h2tUdOmvAW1AMBC
	 plFIOeTqLVFY6T73slD9eoP8zoZmIbSfCujbRiyBOn4blMPTBmNN0lXzU6G6/7w0zO
	 IdqNYE+dfWy2KZx6gKMd2AwFI3GLH5fI+V+swZHiU03JqpOWi0x0Yw0ZI6iSTh+UC6
	 jyrNASs/9gnT1PTyXDtjJ5snAolRiheQlAFAICiCqtuOmrKeb6QWwWI8X4lDv4QSMS
	 +0+pzgqKqW1BdNAfnmpgOWxArkfcXsrxFgL0D1CV/RI7JncsPxAPLzeHpgRRNg5BVq
	 f9RMrpcBo5CzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF651CD4844
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 16:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169540050871.1439.15521079552901749779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0086a3290acd287f230725d815c2cc16d626599e76595a269bee4e729de3a2d
Date: Fri, 22 Sep 2023 16:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695400508
