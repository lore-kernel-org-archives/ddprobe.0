Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DA4A31
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0468C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670661087;
	bh=v/HMf8iWqp5wXZCCNppxdaZGQSYcwb7UcRKtRIz4lD0=;
	h=To:Subject:From:Date:From;
	b=a3nnc5hf1kZ3BFnUk49IAgsUEQpRQT4cyjPNKdo2hx+Ew8UGfwG7IK0ODZWz1RQ33
	 PAbYRDjK0wVMJa+6LWFjFEc02mjs8s0YZsk7wXSCmRePvjwGDLJoRekOwVo8nxdj99
	 0D3brA0NEkAVquMrgZiDds286UpcxL/dko29HgE/PYSlCnRHws/XLCI+/jqSrRQI4O
	 OllE25BPo4X7Wi0iH97OM6c9LZaSUhTFsBEA7lsLX98Em3r4exGumbepa75fqKG8OW
	 HGukvMJjElLtAmqt3FyNIzFJNgUgs5T3FXPONoy3SyaycVq2BsHxr4nrcefNyQmKTe
	 enrmv1r0i+ySA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80473C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066108746.19155.14923459972066833985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041717f9414e6a803c4610084212e194ef4fb9f311a41f757f409abc694a38e1
Date: Sat, 10 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670661087
