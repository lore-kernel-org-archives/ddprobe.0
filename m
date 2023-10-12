Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7371923746
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 11:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltVDDw+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED34C433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 11:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697108828;
	bh=FMM81PTzbnVWOAZst1OZkE449D9AaFGSXB+7kXWkeEg=;
	h=To:Subject:From:Date:From;
	b=ltVDDw+fQ1vdJ7RX6oLL8f1uajd2nBBllZerNiV5PlLQKt/Hsn7BusndL+akKkr5T
	 mftyzwUaB7XwaxwDuJC523dEva/Lmcc5M2YmtA7JWZeb4hl4KZqGgPpqSCjrcdosWD
	 lLtREIcOnoqD832vy4TeDWo0lWdksNUCRnQism//yl3FlQYM/y5ol40YXxqbmTOHxD
	 ZmzpePg2FMPpuzNSB8Bfhjdv4bJOZxeANKy95pDDYOp3WEnl3+miqLPI4lbvjDfVd5
	 A4gHsSgjHHUkjN7Aqob+3kyYSeqpFdUMImoQ6vmHeHx0v4RowKHd5cO38wGaUTqKmq
	 6s3BjAlDjB37g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B078ACDB46E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 11:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169710882871.31735.22315861187111211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117a397612307b7ccb0f00730e615c8c56cc279363f51f6e17e8f8bee2fde150
Date: Thu, 12 Oct 2023 11:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697108828
