Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5A128E8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB0AC433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673261487;
	bh=hfQgY2b4jdFh+ywvn4chfGEaCI1WTaWBJi9nppDTgeo=;
	h=To:Subject:From:Date:From;
	b=PofW06JJEDU8bsHz57qYvEOqiDMueYC25FsJ+nJvYobiExzLN+2b8ngPH6FUxvfe/
	 UMlPTSgJa+98aRqLSU/OfAWmoVQOVF7Jg8hH5Krqsv3OPvpI80yxbXXHtozkFDJBQl
	 9YWe9LT4JCnO/xcuPDGxHvD+MibOAF/LPJhqOKZu4kpdZFJzzY1NOKiEVLG8cR551g
	 V69zFLWaRkXDhgs3oUteDQiXv8259pSeyVEuLeo1IG7ej/JAQrdsgkxq5Fab15vz/T
	 Uhknh8nddgMH6JrNfRCKivFz4zShyBiCESSMqhbjCUyDFlkRbozhGCGLLC2dC+p3Fi
	 wFIykcP1OGTBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73298C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167326148745.25555.8552596591327997621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7910a77dc48578ed16d38fa9485dc3b013b50f51cf86d7cc39ca0bb8a5ac32
Date: Mon, 09 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673261487
