Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1530E11CAC
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlqh8G5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86413C433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698841096;
	bh=Su+5EEYfC+3izKYCxaGfKhOiOfdJX0ULXi9H8To9uOE=;
	h=To:Subject:From:Date:From;
	b=hlqh8G5xV17ea/GJLJuplF6gQAz/snOIwIjS6eCNXVriEVtq703wKkp081S/zWInL
	 QP3dNs8e+jKfSbqaeYo0gGrBXM0IcNVN+N+hAG5r19X9nwSHqI9buiAQBPkXVUFlnp
	 eFRYvJIbKyqSXqc57xTY9Gv8RFgoKcjbyKbr9/rlrhy+Ht1JAFBNAcUvHrYR8mYdrQ
	 Qc3ssrSy+P3ErZhvp6IFt7t9DOCg6leTkFgBoM+7B++2TqnNOmmNbdO3YUooUxrJT7
	 YUDNDLxjzmzZ4S6ZB512uxQuGxUrcK8Dov5aROvpvVqhnVRU3YwztW1tWr0tBodVV7
	 ndx50g53eY+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648BDC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169884109639.24952.3864392733167983080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4a52a527a00cf8c4324794c4c32d652b03fec17a5e3162ba22561c059b0691
Date: Wed, 01 Nov 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698841096
