Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130AD34545
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754280594; cv=none; b=N0zguFcYjpvJzDHQeYztc3JR5zdZ2xNHOE2xG9lr3SfnoO3+T8Zdp6zEIAzsVk2iQf9wf6vThwDVIuRhrYHB4kiFvEcxJsyGcDicnUDlfS6h5HL37kWni7Lq6lC6BXLY30q4B5srsWDtyA/V9ReAGTUKkL9FKtajjqlecXFRGD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754280594; c=relaxed/simple;
	bh=TxjUoGhjdFne5flVhIxDQr4Dc6+0K+hHSv9Ji+TRZW4=;
	h=To:Subject:From:Message-Id:Date; b=VpfCUkq94din6R7EPGZ69oQmyjrLpgun+LOYLnXaiChIZmAYysWKJcKBETXshyTSL2LwJcQuwOHFuZA3ONrKCg8ckdBli4qzctM6CQzvfLSywfr/HSlyQSChPGrvBNRPPRQi0Sz9lMWZgxJAinAW/waSLPkVl0cnq4q/2T8wi1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhHXWRRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhHXWRRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CA4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754280593;
	bh=TxjUoGhjdFne5flVhIxDQr4Dc6+0K+hHSv9Ji+TRZW4=;
	h=To:Subject:From:Date:From;
	b=ZhHXWRRwpBWSpd4UMJPLW6snOEtDCf6A5JzTTmZgEQcr1vK7ikEIpauM8+hCiL2TU
	 Uvjm8T4RFWIma3CTPUsHcxmIRI/MITEvPe7KuPu2wclpKxfxYAmaBYFkNqSJ63Ih7p
	 nLOyEbnq8KFyznvveEzxPVFgyC9MmYtYaE/Jt0Yi8ib5haZncEwxNxiHaWII1KjVO1
	 Pp3yhU+Ttyiy2LWglbsLe1OMDtXsq1wUdbOcGZIAD37yJbJFJ955ZcxHgxmVh1z3zG
	 +mwcZRCIbcjbJ2s2+FU/yLcfb8tUj3SmWoQVLD7PeXshb3pIRNualQ0gilzPDsbAwI
	 S+rqcvKajIt1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F385C87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428059357.30412.7224640042575101336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2bf58bff07d8315befe6ba720434f34f82bfa4b91a4390d927a3391bc67fc9
Date: Mon, 04 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754280593
