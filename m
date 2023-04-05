Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357FF36B
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 02:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E606BC433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 02:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680662825;
	bh=JE6K93cUvtKKrXARWukEqJVabydWFP5kwkUYnOfGEUM=;
	h=To:Subject:From:Date:From;
	b=FCo8Lw8EfCaIgN4NbtQeTDeK2jauqP+LD/sRR6oPTkkT3eO8/Ra0xwmRsW9Ypq87A
	 S9vqc6GUmC7+PUOLuXDmFjicltR1wZEMiqXdMp45HZzBRhhKWtJgoxBpd1D5/zAuDI
	 dtNGW40RudRe+m/dR4+btCzwx9Q0dk/M7lo7dwsDYfssOgQq08RvTfHcAILjMvyML3
	 jngR2KyLeQpSiM45KRP2uYtG9qb/a6VA5rUbxySG37niCzEzuQs5f1dUic2HLVDu2D
	 Zk2lV5tAcrq0pfCejp9UbBQJsrbddwGtCcWzxJb6N4voLNnouAa7vKlJWDIJNZ9gUg
	 n7SwLat8nX+CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B92C9C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 02:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168066282575.3175.10520836776560879904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bf2e679fa58597c6cbff9ac1441b9d7985127a25e51171c0af5b818d8d8da3
Date: Wed, 05 Apr 2023 02:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680662825
