Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8F917CB
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD2DC433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665570053;
	bh=jo8aGdc9JU8IZ5I1P6rDNlOW++6HpjlkZ6fF8c5Sp1w=;
	h=To:Subject:From:Date:From;
	b=PgMHwGpKV5JTz6zznQQpKuKS5nKLinOvZn61K4CDJ37+njEOjo2rUy75uh3ISG0Al
	 6QPuKiWbC3ZqgojEglZUexwhHv5qbSfayHqlanQ4K7Ry7MPpbl/sDdTs7/+F+KQrqr
	 gsrpjdtWnRXKe1nXiJK9aSa9yhz7CO9H5ulHoKTR8vBAA9xzdxSeVpYMaCYFLthcBh
	 CcyYTecwxXAX2IH9GTs2+NglypHmgb0/HloDjZZaChkkNaIyJ19EEEUBtV/zK/jlP+
	 sCWTBZw0D1YiiwuGnxl5AZ4RLj85JzWyTvUlA9yx1LRJV0SskDwY2ZL2Wb1n7eTq5G
	 at7ClAv40WhQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F4AC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166557005332.30985.9907289275200600121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5212322c8584cd439566e4a1e85234bf6af6fa8f8fdbe499adece10e278919
Date: Wed, 12 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665570053
