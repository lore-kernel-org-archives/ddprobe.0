Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7A6481B7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2+WjsCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AD6C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702846696;
	bh=S2tk2dlFoKWrCGSbrj381nDf509MCAfgcPGfw7D884M=;
	h=To:Subject:From:Date:From;
	b=Y2+WjsCZ9eLkh3PJdW2FqhTfe4+mKWKkK/+BD4xVu0on6ZYxA7EVeeL3PVxtUJDVz
	 UCwwvqTyZ0vAybZWGowBHmVb1N448aFaAx/9Xw7YAqcWTAxmnQD/iAMLFHDsTqMD9U
	 mu5LS0PSwKVUzosQB1RqHV5mBuhbU6d3cJHpCcSNYWofhW5krdgNUw1NpAAyMTm0TB
	 +QGx5KIeddThZRm6sJuEDITLl+FKe7+wh0Fcm60E+UGZshLZidAIyKGSFEoV70G6rz
	 qy7yOBaPPD5hePvnCLGfhVDUkWAXyOZ8p2joA7cSgRUTKE2uBg2NLP/AXDhGcR7usQ
	 +oDMgTgbLDJtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602D0C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170284669636.26691.6797358628331744646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abadd92a65a958a3ca88364937cef6f298055d969f09824f7d7755be4ae84584
Date: Sun, 17 Dec 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702846696
