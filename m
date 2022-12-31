Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D323E15AC
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A16C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672452687;
	bh=zndRnqX8qpcpbPbIxl772/qdFFXTepYIQ6jUsWgiKwA=;
	h=To:Subject:From:Date:From;
	b=GjmepcaIH9f+d+Id3Oja1QzHSMPEUn+nj7rg8r6xgBTVDdXlWYwr4vKv8gnUwnguj
	 Q2zbifF1k1xCQ4QEvoCqse2tlokDQ8B1lX9qarY2rdV3HPjpYx8yan1+YQkQS1YO14
	 x7Nvk+HQr5lgHrU1qWo8U2X3Ws9DebLDym7Dh2RM+m31QFbYCxNDLcSRMI36xf6JwY
	 LZD95rmKkkl4+qVBtucwCZmpyx0aedLbg2UQGG/ahKxfJQiCzCuwyUY5u/KIl1KVKw
	 E6WarXg8YchxXO00/cMj3jk5pjXREVtH9rxjxFJNQ3VXF3zo9/4e8P/bS6BB2x8PCC
	 7mnTM4Q6MYcmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A736C3DA7C
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167245268741.9624.2302870007070170633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628bc354b377fde1214b5f55bc58bc0a65e53b40005f20e3b937a3f4a589e280
Date: Sat, 31 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672452687
