Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454E5747A
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 22:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E72ACC433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 22:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678919405;
	bh=Z0otBgAEzm9Dt0FpcnfSrzfFbuJNzQD7SsVxH2yQCRY=;
	h=To:Subject:From:Date:From;
	b=JZcU7uIwLrjmdzzlqmZbe1xDsppMe2EtzCzlQqduWoIYFHXkvhQ+aabsY4EDo54UN
	 +aqeVlsaPtGXVHHsfnZKcHFAJXUkI4GsWMZzjqRoY5Q4vDOSYkE4JP9GvVZVi95YZm
	 T/P4Owgyps+bLg/SC7qjtYyYgJlpPrQtVDKyJZ3jvepMBLrdZEPZTmBH5wsWHYpFEM
	 cDTGJD2fEPFsvaUTt/U1r648EW1H/KDvWeFj8snJJMjSQy0IauYBaYf6E2yiVXz7aF
	 HZo5hUh3CSrwnDByaqDBZ3qwUI54+Petj6SHtWJE5CFmSsIHuuHE4yFFFi2uXlZ0UZ
	 Yx7EgtRqVlh1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C504EC6FD1D
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 22:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167891940579.17473.12335876335123879386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a64b2aa598493d789e9c3e3d3a8103ee20114f1172e02aa845c90d779cc468c
Date: Wed, 15 Mar 2023 22:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678919405
