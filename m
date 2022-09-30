Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDC41104
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFBEC433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664533853;
	bh=Xjqo+FkLKXisW4XWhwRCv9IqloRhJVf6V1s1cZBKrIw=;
	h=To:Subject:From:Date:From;
	b=vQKnl2tQuZhAkUN+CDZ8aI4s0+zia9/ZurjYH46vF/w4oOH0XuofqRDTSt7P/LEAI
	 VmU4VccLxQHhaOKabwhEoPUM6OOBR/mct+aVfT3V7aOjIhFovKt+usamIieCEdbErO
	 EhsdjVoOB8ic8BCxq3/7rAQ6msIM822Sb84Ld7oNRy0ZFK+/JOUaxpEo9mcHiDgDvJ
	 8nNas2upm+WEwWc0f3mtS5qG3pMyd6MAff8qXz3QWdXK9VqAV2KS5s4a6gqgQlu396
	 tVlMNKmCoQatMD2Mo/59RdvBfRF61gaq5Mm++r3TJpTiTFc/tcszwnPDw3r34QjqDJ
	 UfDiNWlMAFFTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B10C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166453385333.21180.8681629191726730162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3282d94a6f68ae4f5e1302c4f9a796958e47d74853346cf5fff07afc3a6666
Date: Fri, 30 Sep 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664533853
