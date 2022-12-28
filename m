Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5911C10
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DAD7C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672254687;
	bh=7DuYmHbN9w3e1dtXJPRmsp8S8T/FjsT5JX1Iu+Xo98Y=;
	h=To:Subject:From:Date:From;
	b=Dx71rCw4DN2C9vTKz7G4Eo9nfT2BJXvdbwC29x/AbJEPLLOCLyktBrJ4MS7mSklO6
	 iB82VV2BCRR3DVGWSa5ztot23t5BkFte+/GOz1ATqsrWbujXuthXPPk7bo/cmkLjgb
	 j1AdHXUReNgIRyXKMYXfxx24sb0BcYIpTPI6WlQLSmrcQRmapf0GEB79qW5rUxyHOc
	 8AjlfsA1vurP5Dlg6ZPudEv5pyGq1N8bUS8MraQ+hce0PTA+D8Qr22m27be5BS3IGU
	 5vb1mAZDii1E6BtXWG/e5RbqckXO+X9Q3X187gXSmH42JdX3FriytNy1GlVhKuNucE
	 i73FJqCao393Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64000C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167225468739.9579.14512154915481940974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed35af26ec596b81ef9c411388dd5b7790b7249a2435cfb319bfba4bb25af1c1
Date: Wed, 28 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672254687
