Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5777C125B8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5PibWvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53E3C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697291228;
	bh=VMvHCEIi0ChveOKb+azm43hk/8iJOIAK/kewkBkecJg=;
	h=To:Subject:From:Date:From;
	b=p5PibWvQ4yxP4BvnuVrTFT/7e9l6aMheGFHXnkpEzHfTEG7dwvGz+xmnsFy+9n98a
	 8JcHf9jeYvgrzgMUmHS6j4J0oR9doDTrspb8cXByRQPq62LDOxwxjn1U2o51qD2x6c
	 8pfH/yvlv/p0N/p2ikHkwm42fFDuSZBsxTDpuYxH7CjjC7tRBNxgoIBfqiwk5i8Bx+
	 1+YqOJdL0/cs18wqBHkBNJE+Bx0O57jGZZUJhL4CZRuS0+Rjk6f3HJMYdSoM2SwqGa
	 XzdfjgzFO8kT5lzfpe7iwlyVo0W+cn0695wu8HIb5DVn20bZbgdacJZ2jCO2sz6qFQ
	 sK4AeEzOVUAtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC01CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169729122867.7113.12521244815332514256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103c256d2954c7cf5d63fe4c674b4a581d7b78cbc3eee54d78378f7f4684fd68
Date: Sat, 14 Oct 2023 13:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697291228
