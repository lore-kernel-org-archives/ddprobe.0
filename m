Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEEAD1DDC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQJkzD07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93244C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704357496;
	bh=eOVnS1S1/4TdF8+gnH1zNJKEUc+lruxkdZFKrYfSmwU=;
	h=To:Subject:From:Date:From;
	b=KQJkzD07xKbUvlDyrx65WHZeFXoizca2yLFVHoRfYW+K3mRY3oAUVbNFOoooLIjld
	 rgVHmda0/bfhseLiS5WiLtfs6dUQE4T0gyjnOf2mZfifmrN9SdwRNuIchXuFmC+XBi
	 4yFnsvjdchAvT2bRCTkGUsMkyONC+VJjMJHICCdOO9v3kcReVFd6Jg0RM1rGNDmUvQ
	 s3LjaA9RX3rR2X+co3ptEvVwNLzxIiv7C6bafvhuE+NzdHfO/0LvkEGwM+q1XbLQ5f
	 IrbwPX06WerX9MPZESfx9sjuiA84uN1M5e1LekS+MrC2b2ydwz2TpyX9HlvUq9esoe
	 Ny9/m2GDeDOMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70F6DC47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170435749643.16119.18002506657505552980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611b3badf5af3228972639e1919bcb0fb4eadff6e98b2c33010ef1dc68091170
Date: Thu, 04 Jan 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704357496
