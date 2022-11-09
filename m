Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96FD17C2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F99C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667965254;
	bh=M/g6HjANkgPPIQTuNN7ySp0XJZ1H8TY5g5BWlVS7WTI=;
	h=To:Subject:From:Date:From;
	b=NSUqs4BoVvh2kFyhqCQZgr59xTLs8sq/HK93KIwNl01dx+eQLwqaUYymb0UyZSATA
	 idMUjCkxe6FBBQyCXL6hcwcjhr9mas1vTCJISqNy+PKx2/LwJBQ2h4Qt1MX0Lb4qsM
	 zOAHqe6pb7VlqHs4yOoa6C3PGZsQ11InIYhEa7Pm3gD5Wyuk4ZRu7RU0tPzF0FHJT2
	 LkH4uGvTxtgY3Q/d0yA8QA6u0wId6EDDX2kqssH74W0vh3Hw4aGDfUGHCqSCvdyK2+
	 a5r7nKC1D0SfgC5Lu+JZqNVP+OIQKFDFj88tWe8Rh7CnMHLlLWuejyUTboZe3iKa/k
	 Eucthnd5NF5TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B28CC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166796525441.13524.9399954184855484694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f5a9d2065098068de18d0239fe8c79429e60b2ba54bfcff131894bc8117f65
Date: Wed, 09 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667965254
