Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2E9627
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804D1C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665022853;
	bh=WbSacz+wPQN9L89QqYYdqKyrPM/D+ZY7dkR2X1Tg1VU=;
	h=To:Subject:From:Date:From;
	b=bpEtknY5T/5h1hN8K/1Xmvpear+TTMqxqfr22RsTs5N+c+Uw7u7lEZWyMYHwEP7YZ
	 KZWHiHaOz5MOHRaURfKac88ED/NivsYUTOJWCYcKgPPmLCVnWc8MyBsqo7HXsWQ46i
	 TBbR6k3ymKmke1/rjHT+PQLdf53vpB9buBWJk/VF514xds2v6Q99qOXexBxtQ9eqe3
	 lUCpI79aOIjnisyy7Nb48gCf/kyEKNGMo5Y85bMCmmP18bxfxM9BTHDUuPz5SYMP7I
	 TY5aNnSDeMwN0+ky9mZSaK2UvkujnYvxxLuDv/diz129014yfEdsZPlFdbvjf2vrGX
	 SXYfYBjdfvUJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655C7C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166502285340.3093.6424218011087783607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce81441b06005d77ad18dfd656d9cccbab37e428bafc8bde89ce80b70adfe70
Date: Thu, 06 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665022853
