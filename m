Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB50BA2A
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71908C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666677653;
	bh=DR7IluCVO5ca+PXmLLyX359pk+xzziELUVrz8iAlWMM=;
	h=To:Subject:From:Date:From;
	b=BPbKujIxXqx+GZvTqCKV+R4+ohdwDMc/rj9y0LjGEqP9MjkwLjI/ZOLOMGG3Bekvs
	 F+kNuyBs7O+tpH839blxS4jFGFzwJ09I+vE1NMSta7xct1dErQrCPOeuPH1xO2fC9b
	 tweSrbIaXtI4azVxwSox6E8SDtjnlnuxTq6m9knFBLumPv2XLbIxRpcveGS1ctfd3x
	 /NJj5EHzTOzZ7AUHv0KGjUwY9nKCJPv6y5t21vfusSOs+PWumKRiKfdv0JHfbHQQ+b
	 HnB12Gb5+ASxI3rUn3DPHcuU5dD8efpJzea7vkUHldDPH6LuLF6tnxgQnzkBhycEYG
	 QtFsXZCHSqXiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51777C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166667765332.27179.1468447498240433948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e86abfd261faf19ac5095dd5b0853f812185ce74090a38cdd27cbbe9a458dc
Date: Tue, 25 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666677653
