Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F337E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A195C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662513653;
	bh=xGTanwGxTG4XEs47hotKtECH4aGCG9Am5GahbFbFIfg=;
	h=To:Subject:From:Date:From;
	b=XhU4LpDup71MTOyO45ZM0r6KJ0P7DhRsH09GQB7/wZ+2AnGeUqh8/hqb0kd5kv+q3
	 7ojNwwFGgenCpKvDAmCFpazqOF1X1Cu09FLNBR7KQEnGTp4OC5I3R9x6LeguOQPCt8
	 FLnr/xyGQ03mPlkJb2nLelMLSw2Snc4uGcKL1CLx7olCnmCGaIv0Ela/Ixg8s49oNt
	 ror98SqPT+lnUkS0BqrcjO3/8dMIlX9RemSKP60gCy0bUSw5ZcSj9cJ0XOwwAJz1TD
	 SGlvx9rMf1jzo5UUHuhtwwMDH38Y5nS3Duj1uX99fWDVjcu25b9MmUAKPRbRWCrYbk
	 9elZ5hv80eotg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51154ECAAA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166251365331.18317.13322726911910157859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359bf79aaa0b6adbfbae18d32e97c3720f0e5a4e61350c5aa701cacd36264a04
Date: Wed, 07 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662513653
