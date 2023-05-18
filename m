Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1AC6FB8
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 18:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BBFC433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 18:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684436165;
	bh=zXosbDSrLqlTkG8WuLhmiwSp/sD0XpGtJDE0/nv2UIg=;
	h=To:Subject:From:Date:From;
	b=nJfgGrHtXbzWE9ytQxqUw0Ib3wkUTSSfKBjCQpHxs2n9jtD/bqTdAovE9/5VICEXT
	 R9CDCbiNNii4MCN41KUQAIxw+BlxeoYzj+ynTu8aEPckMs9LsXgTfnwyebnT5ixzck
	 /vWwcuF3L/atwj46HhwpnPn+JYz8Z4+FP6pw0cn/P9yfCt8WQUKUuUgoZzZVOWBOHC
	 Muw+dP1zIvq1FkzTJSjHgKW3MOFu+gId5Cf8CDueq+WH2c9Lr1Y5XzGjzO2eoIGUYI
	 co4nfkH28D3S3UXvSYhc3raVcJ6Ra8IUSf0A9AC1H0uTirbDxayJxaKeOCu21Yihc9
	 rcCSDb9PWBt/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D90C77B7A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 18:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168443616574.12088.2075412880892435045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c482798dee95f11076e4212137d536f43bdc10cad3aecfdea4b6244303d3e1a7
Date: Thu, 18 May 2023 18:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684436165
