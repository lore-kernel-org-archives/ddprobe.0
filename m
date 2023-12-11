Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6A6487A8
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggVfE50C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762D6C433C9
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702313896;
	bh=dapMP2qhoLBynhATCEI4uc7RZcW9/FON6rpP0iagS+s=;
	h=To:Subject:From:Date:From;
	b=ggVfE50C6505lHdqWsLKOQygjHtjQw6X9UyzoVNq1TR2vNpztiykQWdxHeazRsAoD
	 SFweUzUM2Zse7oH5ZazJ+gjXUQgyF1l/SXVMa1umbgOQ5QSKTcwxxwSL0P/QUaKBXX
	 4e1nLJoL9ZHH3iobj+mR4PrlIN7nmuRjxBpyebu/7yuGcYlrXvto7haaMwLIayWLa1
	 v0437gQsz6pnp2FUEqE2vr6ffLbToNCBdMxHFqOZ8ojXZxIXuP1NnvEATf1+9/uqtn
	 ZNv7mzw+sbVA7uJ9ETRAf+zR5/XJ+LO1v/XTEnJUrqxONarPmwefSb8F43Io60kb3F
	 A9SJOFhsd27Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C12DC4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170231389636.18309.5485076021645132824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64beca848dc694d0c968ad81cd6edbb3d02704d6dca969922cd11182033981d
Date: Mon, 11 Dec 2023 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702313896
