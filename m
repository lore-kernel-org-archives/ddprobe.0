Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7385B23AE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 05:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75A3C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 05:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690521728;
	bh=ytkL+rPNgFXyv4vRu8qcEUyrFtbgG/hnMB0NbRhFrsA=;
	h=To:Subject:From:Date:From;
	b=XM4n5e3v81DmhQz9NU0YkTuUMfZJRuI6BMOWRUaoNV+UqhJhoUeuoHUOLNH2Jpgz5
	 Yg9EVzPu4b+i8n5lHX/KtzLFvQuO/YYy1aicUBXGNrsRfzb5MsGlAyaxCb4tIU4ZoJ
	 dsGzeofHnaYJBKDl9eQ2nDdUAqgPQbSDHxZXr6GQqf1hYIKbFMBcA/nbIS8UhaLad4
	 WQzE5gnnpYqtOeNp/p3dEVyaeRDJsG2sSMO1iEbqcPQyfSp5pvh55Of2iWy9jYbaR8
	 w9hJHg+nFOh7sdlGBHFzUPP45Fsv3cjl4Nf3MkYPDJRfCqAqIo3B02iEZSacmLVo/g
	 /8XwR7ymwQXWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B876EC001DF
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 05:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169052172873.10009.12672987711663545681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970aca3105f408a071f71e49c071ad20b31a50f93b5911dc1785d25185b35249
Date: Fri, 28 Jul 2023 05:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690521728
