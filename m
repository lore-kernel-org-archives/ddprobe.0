Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B88FA5B
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1NFCyd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD14C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696814828;
	bh=fWWX0CWP2n3GJTogI1WlkpbsrZcMg3tuoTqs447kbKw=;
	h=To:Subject:From:Date:From;
	b=i1NFCyd4wTL8U2EtU+PnkZdBBOnBXSzLLYmjMPrfOEIw+iF61HSfL6bvQrkCcm1ui
	 0sI1pwydQVKxKIJ+pH6P9F34dtuIJHg5xovNgLOs/Q49IugatT2fYEmkfhQyiBd5pg
	 XGAONKAj03N+oa1FT3/o/Nwqf7gJYNZzTpqYw6vEuN1P8Ii7Vzr9msTEZsox2qo1JX
	 znyoTPK7AbiFpNS0ntEdlwgwZDHbQ/nQoxu2kLOB9Ph8expIQf3krdPh4aC3oi339y
	 zzkdVKCAJPLFmuKCXNw7d1B/BZ77W0NBoI7UBD/NNIOqT52r2ZRZe8YJbImxBX2z1t
	 5arj/nvwZF0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26CBE95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169681482865.28838.14824691245985861858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c65ce2c5469fd4c9baa6f2f1ceb31e0655048070679b1168baf64a5b6d7cf06
Date: Mon, 09 Oct 2023 01:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696814828
