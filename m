Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BBC653
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB516C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686887948;
	bh=GdHZYAjylC/VpFWUVWEnRvfR78vobJsP9pyFGmN6eYo=;
	h=To:Subject:From:Date:From;
	b=pyavgK+O4pKx2RqGI8NwyFtOQJNIU/xl58SLTi8gVQA1qF2vPGGax76qGbT9suDNl
	 qoQ9l9Q3CKvm9OLt3nnz97bhlg+GGghZBk9i6MzdwllU135al7Wk6BTcp6XN5lk+iR
	 /OBfA4Vu4rLFl9i81SwqCzCam7Ym4sPeKQa6yTP42gHWueB4nGAMLnYkMnTCxrxA34
	 YJ/VYKwM7DW+WphXgSxzaVOrEZzor2Wdt/acr0uVM88mmoDixSDoQYffDfItfitPV7
	 +wmPr7zpt4ZVqMNfG9zUjGRNOgO4nDgIhr4uGvFwOAiauxjXV8zubhT6x51mJ0MR2l
	 J+5dASEqEyAvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD60EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168688794870.23900.7638424924958957948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b15ef3026681ec70cca2312b6ef2c7056db2d9876fc407e0c62bda6e9b51b4
Date: Fri, 16 Jun 2023 03:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686887948
