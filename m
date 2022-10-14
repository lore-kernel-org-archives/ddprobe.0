Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22D84680
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771ECC433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665783053;
	bh=luuQdodCi/pecpHV4TB+ivyuEd2et3PgU6SAeI0NgRI=;
	h=To:Subject:From:Date:From;
	b=Yj3tiyWCOHzxtQgUzv70Q6PF8PolcgE3mmkn67qFzj1KkZ/jcXFQFyOUozdwwUw/0
	 0VHY7ICD0ExBLxpolCXdZUd3ygcW9atYewL101pBHESPqFtbqNxUA0kDX0sPEVnSBP
	 5+hIsVgyGVyiAY3x1JEKzXHNriWjK/+THEWBbWk2RDdrob7QU+1pUQrCZe9IFVBsE7
	 6u+qyd2K5PwZwc34FgQqF68cH0Cu52koROcO9gvSehhpBuK1OlmJsSVG9LCV3geMc5
	 NxoxPLW05rSowrLEQK1D3OBQYoMlx/4aNNfPDYaSV5mE/GHtOcz49S+R8QL3/khEzd
	 4WEu+7tqI2jEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB9AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166578305333.12050.7713928600191730921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e6975259b9c5919fbdb1a0171e86beae2a721eac881dd02f0a8a46ba411d59
Date: Fri, 14 Oct 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665783053
