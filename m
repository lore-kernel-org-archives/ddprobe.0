Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62A3364
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78405C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669606254;
	bh=49qVoUgnp1ooVdLYvJbXe4/qGF/H9kzwfqmClYKpcC4=;
	h=To:Subject:From:Date:From;
	b=NRt86YCLFcBlcB0gSoV3iyarX6jVqWD27FdrDL4MW7qG6DqB4lDEXthyRa+V5RBy6
	 rGKY8zxWszYntJite56qZd3xiDQVXSrOs1SEUhqj3UHlkrhoJBbt1AeitKfEMkqq1J
	 T33RJ5soZyzqSekosmgHcSUVFHJ6SJfuf6xhA8dMxRVz7765T24OW4lv32F7f9yfDR
	 XYeBHPkAaV7aeHVE6pIzrOdY+YdbUvQn14PlT9XlKOv4ZfWqbEjPe7eXj8Et9ciMf4
	 KMpZpWgJJ0XLSs3mIElgWA+e68aSjMxKAM8t1Kp/OJ8fEz4sBCdGyk/dV6eCA+H0IO
	 qecD7CcCi7KOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD3EC4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960625436.10729.13601614847919233307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0263ae4e0667b51915d99d2439b41dcb19b4b43f229e6e2249efc135b43b8f11
Date: Mon, 28 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669606254
