Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D59168A5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cw74iV1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D905C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704230296;
	bh=Hl6U5o1oHzsRYtLOdA7ycS0hy9OzZvD5Z3LugpdeneM=;
	h=To:Subject:From:Date:From;
	b=Cw74iV1Jhs5WJxly2vYpbqwL+jbZkCBFl970z0S8FAxrL/6/PRki8ITWrLLPPoYtt
	 YdW7vdNsndCjI7DwZy0ywh0Ky1a17YAdTEdh+e/RwL3jZvIRSyKL/ET/JY6nblFg4u
	 dqK7zZMH5Td3vrxiQp3sjLv6kZLF8P6DIVMeReowJlOy3qa7HCkGOYuDBIEtRJ8s7z
	 Dl9MlFGhfHkogbRts1Y8EFRJkq8APhmsPmjxP8sM7gryys63gLO984Hapy7/yd3ngL
	 FvBOMEGFR5tQsPfXVbY+Ok5YMNeqZnLYPEj9Q/syb6IN8juPd2SNQCMzhaXdiYEtY8
	 hB7anxYDozyDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C755C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170423029643.18792.5471030573978220040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd530b90024879058fea8f94dad61a22f16af9a1881450aa3dbf120d764f3afc
Date: Tue, 02 Jan 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704230296
