Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BA87F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A83BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662882053;
	bh=ClNksMt5meAgYxb26mFPn++2qm/fVA9Q+KWp+A8W8qA=;
	h=To:Subject:From:Date:From;
	b=FqAOmPWGOkwn024StlWUMxYCD9jr33UauVLrB230FlSJ0fjKdPShXsUqqYQTo4rjE
	 ti2IHdFOd/EDIULWS2u1vxXmxB5ONYPORvWmIGWrkRApOkMdL1olJ5kDqyh1+IGex0
	 WeJPvcEZAqegQNetqWqirn95h6Jh8pjpV/8STSrRZhGrqD8+CcLbJQ67u6L+3r1jxs
	 KHKtSuP1XML244Y0RBYYIv+usQeMAk3ytVzdtlqWxlxHoLgK7t6GGCifNGiDN0IhF1
	 kdyBjx6RdxuHW0o16YYmPqI8SiBTn40R+sS0ys77lSwumTNEGd6f/3K4rEUpQjfP/G
	 4AQfjf+e3LMBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59DC2ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166288205334.7970.5754800972900626343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280478361af194e6427a4e4241330ac9ad30164fe229742b8ce4d364fdf69151
Date: Sun, 11 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662882053
