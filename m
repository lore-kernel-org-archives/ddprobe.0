Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B57A495
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74020C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669669854;
	bh=r7fQbFNNevG5z96WHkUR8ciUvM+YYYF/6Ib21lo9Lys=;
	h=To:Subject:From:Date:From;
	b=XRvlvO5Zt3HbEfkxzatsqxN9AXSf0NAHgFM94SHsjwXp/pXYKTjaykUf2R5rBYFUx
	 AwsdEzksRBS4io0N91wxZ79ROztXjkZH+oABp6IxTx4OANiCznv9I/6MMDVnvnCj3B
	 9rA+9Hwm5lhVsxJRNbJ2AloyPlAVgIiImnAUsylLOSqK+QumWaR0dDZsAZfs1fz2zQ
	 F29UHR/8lqprdKRvr66QKHqd7oHC9Wx61fhnSR/urLpcaXA00LmzfdIVT+QfVS4cvE
	 siW0qub1I/6seQoRf03SgHwZILdSH9aMAGc09p6k4RHc9ZnZo4fgTxmscrJwz8CZTZ
	 k2WK6IR8nxrqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57391C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166966985435.5900.12503722051706509972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818ef8797bc18bece6dcb46fd54f89cb8b43c7c4be323e1e030fe32de358c5a8
Date: Mon, 28 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669669854
