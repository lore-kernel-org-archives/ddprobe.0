Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDFD3C35
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 13:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE7AC433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 13:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694957708;
	bh=YScz0CYkaTKxS3mfu+0QISLzkSBUFpt7q9R6h0mslIc=;
	h=To:Subject:From:Date:From;
	b=rGJU9lfqD2BaWBWQjJ8F4hbLK9Ko9IVbSYg8xrGRNOCJWp0ccA/k7BSkAnOHlTZYg
	 GcYQrdwfq76X+62f5RvCMez11KrC/48Gw1EJlmUOGXzoBxstU8uu3PsYhPZZ7QZURq
	 cRiF2OJEtvs/K1peshdVmygfF7k0QWOg3ec9/13RPxWGczlxmRjFdphn2EkXWI7JgN
	 Bkw9yJbBvYmy2ll22OvSKNyyLz4nuAHKEet8WszkuuNruBMgT/1+3k++Eb71ytytL7
	 hzcNk5yOL/7HrpbdyoheKVWTwUO5HLKXMm3eWJgtzEdW3JyPCrDgkYoifA/3RSZn4C
	 1E4x/pbsobSoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6F4CD37B3
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 13:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169495770869.2412.1792902091945121707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fff76b3f1d6f38209028396ff97c36818d806ad06554fbb03e7d882b4d972cf
Date: Sun, 17 Sep 2023 13:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694957708
