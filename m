Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C4CF9F4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 16:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2762C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 16:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694449448;
	bh=SadNmiub4PAcDWqCGGYLltwbRiqx3slEeedc34Ylhew=;
	h=To:Subject:From:Date:From;
	b=mDw0e8tjL/SA0kWuI57RTDulLxcpIncmu/rN1vdqT8w3brRnK/A55dZBL4HI5oUxN
	 ZyRITFgsCuV1TxwPsR3LBjlkjqENxEtIuhhlsQLGjitqrnfwINbLsUbtQkPyQkS0n1
	 X4ewIgSTctKaM4aeXAx01BeEu+AkBGF2yMVSTYsAU0vDLqAWNWZGUUjitNvUjZaLhM
	 eWXB1/WjD9BCdKWPsDjFOOSHxKUUZalWs+B0GjZgpSZSJ9OgmmMmycWbiipXZ7cVJa
	 93AmSlIK92ETHJfrGO585Ld1GcvE0SK/kuJmcL4q5IGNsropt7L3ZVCmQRwO8X5/KW
	 ro2n/6ozwkEsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B37EE7FF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 16:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169444944867.12350.10809840345863001058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b137a222aa4d0fcf7a7e14416a12cbf25f2963bd7c5bdcb4e0b5d7ee49e2fb
Date: Mon, 11 Sep 2023 16:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694449448
