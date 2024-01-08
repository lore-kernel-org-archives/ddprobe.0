Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F8A7F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LB4xFCy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83678C433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704685696;
	bh=/aUxRNiVLw3ZuXUY9kIjym8XqiL4+ER3HDB3oTM/acY=;
	h=To:Subject:From:Date:From;
	b=LB4xFCy2vNjFx4o6BqB70hCUXYE+8gOR94Yvy1QawEaayNiFYhLJAxJW6cpud/csU
	 J9Hvtqti9r8xJEJTOGCmgFdbiXszvTJ+o6T1LRmQgIgqdan5JLAKx2c5Vutkv/68GE
	 vGlg5otNNVBJKmiFtl+86U8xzmeybIRB0QlXQqUFQ7xWhVsldwHmSJQ4a0eY2REvBB
	 tTkxNa5i6PTchSEI0KqdhDE0FQBJlplgRTt0jYEbWedwvZZi2wh8kF0/h+AVHBE9aD
	 0A7X1bEsfmUpVJfWt6huHf9ENJkByGrBDBUNz0QQPJDA8ejsAajVeKgTjiNr32p3HY
	 cOu3w1ykaOiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 663C4C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170468569640.15301.11925751130296432357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569f90632d246793994dc697650b0669e997c3fa0166d42797ca000a6406ab90
Date: Mon, 08 Jan 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704685696
