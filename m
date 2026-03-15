Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F07362142
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773584694; cv=none; b=VLJGQj7w/q883LK3xEjcNuYG9UWLBHeG/UpRDLfCobYJIHUOfvXpvxvkeMCJD1HiPvEbC1VQ5FBzwfr0RAB4DbxiKDNyR5F3B8MB9j08womnoSXU13LAma4yfI5tkHjBBN59qotqsCRuYxLZ3y4q94XAePUCp7cXpcxAOuPu4Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773584694; c=relaxed/simple;
	bh=+4y2pEkHfOE/ZpfZCcQV0N9SKSeVcb/hmPihc+HclYA=;
	h=To:Subject:From:Message-Id:Date; b=X+5U7Kow4lnJ0boSWZfgcN1RVAMc+2GwOXN1Iu5CTqcrG5oBz2RU+1pC1qMqSEfvEvPpP+DBXcQkW2vDZ6NpFF/PGmmp2UAjt75irTvkjSuX8o3uN2NfZ6tqocAmxNVZf3yQ/ngdtJQrNuEK3Q98IU8SX8z8t/BHj7ObnJ4BKK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsPqZgqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsPqZgqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73A5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773584693;
	bh=+4y2pEkHfOE/ZpfZCcQV0N9SKSeVcb/hmPihc+HclYA=;
	h=To:Subject:From:Date:From;
	b=dsPqZgqCAUSWobfC9GxoDbXhk8xMfPUF0MQsblErsItrYoqeyOUI0VxosukVq6JyT
	 0a8QsN5PBQFljuuMOc+z4UHJ7u+4bJYfqYCuIILpobwJik6BPHOc2bduy/BjxJsY5t
	 msBq04AFK7rChLcEXmCmsJhnPuxJTmO9Z3Vtw1B5Wu/1YsDQPvgg+QkKMxKLHJfqID
	 gbc1CJcqVXKjm7n9o8XAGD+Uclg8G7QkDrYBdsqTpj7rCMvzUOtQ6Tqc6SMu9ykPe+
	 NOW6RwvHmNLUkI/EWOOILBuGHmonrNAOTxdHuc3bdv5xZoV8+H8IgtXogTcylVwUmz
	 lEf9uxlG8KHjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952F0F30262
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358469357.15618.1400680839960722782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8929611a7b944082bd9d93268267e7b8db2b090ffe91bcd667b0398e463436
Date: Sun, 15 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773584693
