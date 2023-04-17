Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A054848E
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6621C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681753145;
	bh=iiPJ+8zYFtdxcVSbUTWbmliwgP01ek+EwEQgC+46OaY=;
	h=To:Subject:From:Date:From;
	b=qFNlQOn7k4PD3hKx+D//1JK6/wu22Fxoy69qfAmoBN6YPGTpysBg1o5/wiGvREvqb
	 jhiUfOAbA3FgkGHT0DgmwjAdGFPN0H0b/C55QKE3REQZPlb1K8mtDbxhJ38KZpPa1J
	 bm5rRWhsH+9H/rQQgINPBPtWNZgVdsoAcBT2nKabRxCg35L7sq+0z35L5l6zV9gA3j
	 v9Xd5BF0QgQs/J/jRN9mUpojtx/1Jr6a3r3wW2+3TjxBXga3871MCp2jIJtorgpt37
	 W+hCFZ6oOiozspUEAyWfHClKGWdr22nSmEpSgoEp/cKuga2zrgrLzuJ15LGyOgoS1H
	 SFowKxPo0Z5jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2DFC77B7A
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168175314575.1675.14251293537397751926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bdf192cfc695c1e0932b159f300d8aec59987726a30487b60cd6b701c67e893
Date: Mon, 17 Apr 2023 17:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681753145
