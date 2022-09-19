Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBAE1845
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7606EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663545653;
	bh=jNdh98Ezh98O2f5x5yg0s+5m1M9HXktBjFDhmweKSEk=;
	h=To:Subject:From:Date:From;
	b=PJVSU2B9r7oGmRjkUC+3rFivSffzyDBKfNqRUtI3adZFkMUXKVy8tVCf7JDschqvi
	 CvpIsheW+SBTbYmoXkaVGxtZNY7cFfQCOXkx9pVTHq4HINwtd2Kel9Z8ACqUAiXlMZ
	 JBnVnXXmtuS2vdymgC4szhw5EGGAmjfbjk9aW1r3Dc20g3wK144CLccjACq+l6+242
	 FtQZrlU7ObFmhVK/J8FErGHCzRzmUDFCMc2WzCHKZywkVVqmxzR2+28u0W9ouWTLGO
	 DLk5Ye9tgQ58XwQlzYGaPQQVReqRJnKiPhD4V1u8YZPyutRpYji8Nkz95iZXvA7muu
	 tyQi7ZDgXBpiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59AB3C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166354565336.28029.4893835810674372495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f0b894a5cfe8e5b85d72db681e910fa5e5cf2d2faf375cc71c6c1d94b8ec02
Date: Mon, 19 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663545653
