Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557F41170F
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pT6m1ds6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDDCC433C9
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697290628;
	bh=bMzSzkOO/l+ZM7Ga87Zepoz06SzvFuOzocFOicTeRK8=;
	h=To:Subject:From:Date:From;
	b=pT6m1ds6D5qpnAEAJBI+EUlBrc27xLCROmsT00tWXgS864gNsJ6277x92QRhrnKco
	 bBRzbY0rS3qUY2tzsdQanEeioV1FMewNomi8lxGflKfYFoajMsZfCN1Ykoo81X7N2P
	 YJNbtzIv+VCzvbPByZQP1+BvIsax8jjDxB5pbVFglNIE/Cpe1WkgemGSZeM9WwfNT5
	 w2wlHYr26wTHT2lJ9NDyZGOR8N1KoiljWT6U5MyE5HZF2jxzsHHTZYf29osnMJ/mEs
	 7vTQQu8bc/q1mWaiqeN+j1RxahGmoLn+Dzi2ykZh+lJhZMD/ymzbq75IUG3Y1A2O1H
	 EDlUlSJ4dEQQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E2FCDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169729062870.31890.9320510472813772252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964d5e923da9d14c4671021fcec4b6ed944a501c319de784f119f565e70d06d0
Date: Sat, 14 Oct 2023 13:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697290628
