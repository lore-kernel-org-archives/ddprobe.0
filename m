Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE0A33FE
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A0B3C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662751253;
	bh=WltbeK0tCJoLhXHC+gBE1OoF9gOThRQiZNM0JTFiD98=;
	h=To:Subject:From:Date:From;
	b=UnRxMKhOUqhryIqBYzyiPgYAcIqYVSZ6kaOTWhRMPtGimpT00PBLqPnT2E5U0PI4v
	 fJWfC7xRPkiPwmiagoH1tRb/lJniqFolRbSYI+Lem8wDLAwwOb6dcYWprR7NlmCnQu
	 /bohwN1+qm0qVI6e0yTE5RqYPR9z+c06AGAoXSqfXWLEVA5BQ3Eizn9dkHCWIwbY+p
	 3xdyHOiVCkbNAmQ90Yzi+QXLtd3buwBnPqMbruZIPHtL//TmZzYcWDkvpRMD2qQ+fi
	 T6aBKbzCBcIUls+9F/QsSOi8RsSwp6meE0DUyt2l9A3rUDBZHsL9rXuOHxXPn1aAf2
	 V70P8WtWma3ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5095FECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166275125332.19692.9230111748021153184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706778ab5d1969d124f143a7870e549f0a3c9bb0a5ba0de75ed8f2c41c28b63f
Date: Fri, 09 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662751253
