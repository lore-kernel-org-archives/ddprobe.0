Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B191923A2
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjgsjExq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87A5AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698763696;
	bh=Qmv/r0SNclrM5l+RX+Lq6OIMGGFxTicjKM0EPrmeZ10=;
	h=To:Subject:From:Date:From;
	b=MjgsjExqxhHjrjiifVMO5V/kpFBQ4w5OBTN3cfAYf1eEqs8td85mjeA6vSgjfB0EN
	 6k3bn9R3fihvzhFpLjNiWUHNv72mxtnl70wHRxpKSgeX3194e9X08eD203fWQYLI46
	 3RTMNd4VOnbo/KqKN1pfhhBWHPPbfvwS3eOJXBxtQMD3rqUI160VCtWCd8ULYnbh8R
	 i68zm4xOgmeEC9kDqrTLwgu/Zqdysyv8vbJ/NnCRBkuK4gkehGyd4BuQjUCjcdQQ4Z
	 PHFbdS4vOHEt0YWyNO0NQYtOGt9/9+fsU2TefbAStiUHEFgih3ufF2a6FtMtS5fMkV
	 0+KFLu2d4JWpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA65C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169876369643.10103.16845819415861536323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63bfb67c6ffd1e627356982ef95edb4d9c4046a17a419ed6ca601fc502f53a33
Date: Tue, 31 Oct 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698763696
