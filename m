Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726AC1C29
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 09:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5555C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 09:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693042448;
	bh=WCwcJmmpJVrJTxVgANvYAESy6EOXRJe7srFSh9LWkYY=;
	h=To:Subject:From:Date:From;
	b=l/S7Cw1ygh07r6A94dzccYXYsFbUOdeN+Hv7ZhJREDanV+PGCoUGk/RGe40kApfQy
	 PI5ZbI/OivnPifXHL7lUX0jN5HUV5L9Ub8ZYjirKBklk0WhXwk5tSAxl3oMAOp1za1
	 m8t3JVzQ5iL9n43SoaoEBSbSNg+hbkPqn6t2yKbrcH0YiyrtH6wiKllyhSloLSh5sk
	 5g91cKTHBlhlFVLLQjLr3zEkiVT2CrwbmuSrGoaYzr0Yp9TDV9ECVn0sOWcWDl35IJ
	 P0z/SGSE1P72Sg/fSHFDNII+U/+kP1BDgkO4Eda5OPSwZQVf3A250Cp+fAIcDTOY/u
	 +WbtvT9PdTEVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D62C83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 09:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169304244867.8246.15557884583259490369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed6e1cfe4d74eb69b596caad83e9880f9c3bfc0730db85869a78e043319b5fc
Date: Sat, 26 Aug 2023 09:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693042448
