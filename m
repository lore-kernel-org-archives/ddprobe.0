Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7011A70B
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsN6Ya2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 894FBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700431696;
	bh=L4HHc06TrNyKWu+P7u1dA6X9aQXhy3/fLKQRApidNg8=;
	h=To:Subject:From:Date:From;
	b=bsN6Ya2/JSNsKxt9OxadhWPsiMqo+SkMmNZnS3UpoGt+ltS8U1VrY4oDYH6S9/7Lg
	 BnHJik9quy1s3U4/Ym4z8gHYiACzyEZAU6MzpDKEVa32egOSp/caFGwdMGJB3pzuhw
	 pJbZo92JQNmXANqvwV3n0Tvl1ermrWIDfgMJbXcYq3C49gcAZ90I2VeDco99kJkZyh
	 2CHYJM686IBQp3p5STC1iJi3SVjzkqAQFdWiHhtLZMnwfz6ypmyXi4Jj/gS3le0hU2
	 +oPKDN69NCqBy0LK1wvXg1o2VJjb//mPYCd2s96kIWUMYk7D57Ul3FFG0QL2qbwAaW
	 //UOW3jRMWssA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CF9C072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170043169641.8052.18028560543869728096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea696dbea38c5146370cb5986ccba3654ee055892240c5b2a0b9324d48a32462
Date: Sun, 19 Nov 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700431696
