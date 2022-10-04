Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76D63C1C
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D581C433D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664891453;
	bh=tnL118QVEaGaXofL3zG3GHcHbjvpbX2ijTvvDVWCJRY=;
	h=To:Subject:From:Date:From;
	b=oE4TrS13cx0Fc1Ws+u9dKqyk96R+Rg729np0qQQA7ub9EKYwK4Dkueewx2gjpxxro
	 UeQF5ydyEgKvqfoUZjoiY5YIk76O9wzjR51ToNblxBzr8bUO76C/l9IwtPYfzUF69H
	 6883t/L7vFMNG67ZH5yrhwJXoTJd5BtTLlpx6wAsJxuPZ7kdcIQkifQIX0YCqjtHbt
	 YeRHnM/4UxDWIab5rmNmNvrNvF82bIO6ft/T9r79iJHIseuBOfQxbnUuLzMqf9XHPc
	 gaFmNEva62w9nft11/XPLVI64+GvwTSWKdojt0GoWNuLeqya9//atglNpVRXEEpBJZ
	 HvA0kSOChSj/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55805C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166489145334.3449.13261903613370374894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8775e7d44908c564124add87574a8f85acd429e5ced0d112f198ec584204f65
Date: Tue, 04 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664891453
