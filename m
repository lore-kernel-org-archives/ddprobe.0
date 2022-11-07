Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2EB915A9
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66DE5C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667790054;
	bh=cGjdfUl04F8VdElvO6MCES9srGnBalAvW7UkVss5lnI=;
	h=To:Subject:From:Date:From;
	b=sZ2yqWUkD1jodC0gR+MTCTPUIGGxvXNjVVIDExId5KS/vuOBuDuPhsn1jnuiqT/Fe
	 DGYdmT0CZhMzTrHHIWwsZQxLRv96Pd2veLa4q+xrBc5rOjbHkiwiLRUYj5Se2/sKIw
	 IfzYV2vIbqnElydmSHI6uf2wz6OTPisx8EWa2xXQRBN55nMMqPEPLz9qWW4AUHgCqn
	 zaPtbcpWr7W00y8Hwk8ncZi6fPywpNHgRMhqZ+Sgipn1FshR5bksBu7BWRNfRhNFb1
	 jjOT1RlNKX47RBPXA3hh8/Gz4RcjRfiXMEIItm5Q9qrTBfO3JsQRtZS1oDAj30aPWt
	 62n0wTXO3AxZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F45DC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166779005431.29502.3041756566768024542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4912cd0cb0679b9f91678ed360ad2fcd43fa8f850dcf7d419b660ec75fa8b707
Date: Mon, 07 Nov 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667790054
