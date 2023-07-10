Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB98568F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3183C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688975228;
	bh=nkc2rHXDUDPGmfNedPgiLp9ZCl0uh68o+vrASDryZdM=;
	h=To:Subject:From:Date:From;
	b=oIwd4mkdgshGpPOji1jeaJi4hoxIWRez0jbFmgS9h+VoDGbaijhbeAczSwmLwwq7R
	 2HtKTe/2OB5/+9hoDs35Qm/udOBewdFLWpK+m49f5DIl3CWUWjC6JVdxMF9/HupjSA
	 sBBni/2c3bBrY6iNoiyJNqqEeIQFXjp1pKSQxC4GRKZzjhoYaFyN08d/O7uYVInYq7
	 1af9LezQ9lP5KaCYs+iwf9ztHF2UjiTiShSC6gy6LOwBgs/Ry5j1Y8ktz+1ZL3WZ5P
	 46ZfYq9IQY/gZEkPDwWAbcPIuocINWkOc4656TxF9jh4jaqMphrfh01oAheq2y38Eq
	 ubX8yzXSXOHgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B6AEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168897522868.7840.12123473557951428311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffce3f4f6d5dd9e73749046979ffe5001d229f8dfdd24bcb164ea00b1ed8bdc
Date: Mon, 10 Jul 2023 07:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688975228
