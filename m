Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052C7125DA
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFusiR1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8976BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699952296;
	bh=UcYiYvs4gLuoBfzmsLpb8qw1Gj0gP8Odu+YD6M4H0lQ=;
	h=To:Subject:From:Date:From;
	b=AFusiR1qHVIxkSwIV/apSBzVCus/BUvOZZ8WQbIJotHjFBJMKBUKEnprqa7CHziEN
	 BG1jOOlnyXuddJWSkS+OwPmeKw3Gurd20N5DDzu/Xw0cXcCt9C79aknn3zy4drx1O1
	 cjd6Z5gvCNp+8UspoxiyXhAsHrk2shVA2WzgERGptvViWtJsUT5Lw1acwZx+2oI6Zo
	 dSZfi89ynt3ny8dszVRlrRyHfaa5vLc5LZfq9ZLC9E2pQXKcfwlaa3L2Gtx26AYRR2
	 4jkXAGzjaBWHwGEoRidAJaajUQWYYzuRBz/Z3uchre9ALVTPmzVPf1Op1/Ui0lsulU
	 b+X6/jIjRXKug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68778C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169995229641.22776.16893696689040273670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cead0ddfb1c0321d51c08bab17fdd079c3855017366a11710ae182715a611a6
Date: Tue, 14 Nov 2023 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699952296
