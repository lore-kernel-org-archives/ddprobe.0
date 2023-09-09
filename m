Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706C96FBD
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 23:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66F5C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 23:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694301848;
	bh=c3nSbpyS7mwhXlFRiooUEAH7zrmwhNTA4uawM6xD3u8=;
	h=To:Subject:From:Date:From;
	b=TE2lsmhbhigDsEn3kLTQZmKE7ufLVcAFkobIZGAbkVl6PSnhuCGoWOdYPqqGLLkSn
	 nK8TpPQxPAYOD2JNVJfkifgTIIKBiCyp53+hrU52mVp/z1NdE9jBY+i6dM+Sha6j6i
	 DIn1r+o4+ONiNlrJs4libBAKt3mHNu8cHl/mDO/L1Bnq+6Nr2N1mXD+PaWnQGmkDND
	 U0oL8fmgjJU3SIrzPonbW6Ok4TdkkQ02sjzC094fHAxbL9i/zYW10zUI/k3WGrkT4b
	 KRSf5ZSTGdbSAspN85Yt2LmZ7JMKcs+YUFbuNOCezism4DLJTs/YlxBhma+u0KZugO
	 PifvGrmuplT5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA7EEE14C3
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 23:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169430184870.6681.9886246127154391787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4e9e3a5b4d18d0676fa080d3d2f2df5fba611eacc4d68a9b4a2eda7555de9d
Date: Sat, 09 Sep 2023 23:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694301848
