Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E3615BD
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 17:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B52C433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 17:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690653128;
	bh=RigzputT/fJw4jIcEdOAllhC6x9UpCIjVli1UGkgesw=;
	h=To:Subject:From:Date:From;
	b=qoFLA37Sn1tvi8I/MJGHRgDJnDdJ9wRxeSwdXpNYOxYv0+4syUC1w0jLxMaDTnkft
	 I+0cOqPrDkZgSAynS+/2KsmqBomy1QCn/yUoyt224EyxmXG/LpIRQU/n39dQzIVAwe
	 gpfsV3RmZlxCfQ9FY/gKqGoCHMzqMnpMwa/58uUrOdVAY/WyAWX4e/p71O3ia8tL4b
	 UvU02zKNgJhEjTh7kNNt9SxlVLVVgpMBbqZ+N3gSrATvt6uqD2JN3XnRBFaNsZvvXf
	 4BrjnztCirDa4NglAQBKpHwya8egkDyLROpsrtYg3D1x/dxuNM6pouEBdJOCwQ1+qE
	 3IHYSZwGDtRnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89A6C001DC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 17:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169065312870.4980.14864569304376919756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd99841651f5c834db767f1c1688bb0bee9c48dc3562d80aa18cd0fae23a266
Date: Sat, 29 Jul 2023 17:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690653128
