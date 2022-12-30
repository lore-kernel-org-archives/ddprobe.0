Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E381B7E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87821C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672395687;
	bh=lf8Pup8SDProMZ0ZRSnauPIX2v+55yNUcrQq0xRk4bs=;
	h=To:Subject:From:Date:From;
	b=uNfYnhH0AWg9kX813+cnNhJA8FDK3x9wvMcLcqf+kBJmL1l3Sk6JCpFmtSBfKS424
	 zbEkoaFgtGAkTsuT7BKefzT/chJPsrdnWWTH7oPN1Xp2SMbluL9otMdvtqjvvheWWR
	 9N0SJuBJoXus9fAEvzcwwOc5mEuR23GjRXwB3U4azJR5SEe6LTqCoIAWl+qcht+F4v
	 LKbPeaYJRJDyncQPWSRzoaQTutf3BZFOidoTUZCIsJl8e0RyW73qAdlrE+KfelrOhy
	 2Sq/bYzkMv3uUXzhZoug06o/HI2pB4LRrYxEK7jCh9tjYJapQeKKsxnSHF0XolH1fr
	 tH3+cCoUjScXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68425C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167239568742.20226.15772548516971714372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6516ce6e8ef5c065a646c887dc5ffcf568d767845c268b7a87d5b3d0717058e
Date: Fri, 30 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672395687
