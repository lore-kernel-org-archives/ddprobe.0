Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDC7640
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C71C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673590887;
	bh=xMxlpZOVwTXk2jucHcwTS6BLr7Wt80FMRelFBIdk+OQ=;
	h=To:Subject:From:Date:From;
	b=X548g1jWfV5E7tSoJeoPXlg5Xz9r647sL/Ge5wS3hKvvs5z+s1yu9ASO0eCAF9NN5
	 36pRA6JSCzQcLR0eb3vx2yshWIPSrD5FmWSCDBwMbYPfssrh/c1ndiE/6gV2GBIHTb
	 wyjIBQ9u5mkzRo/gB6RBLA5/fIHVSIwDOzUAxAVNVg4SC3FaYDMBgoBUHi+NV7tECa
	 js5RS5g2A50DxWUb88wNLFrzH7/esKgDBPvpshGNBcpRLcEr7F7NG/HntuYMmlC/wT
	 QXQ5rMRCJeu+aaKakgsKAPb/qxMMPdJIdHMsgU0R4JRKYgT7NbCnef4XUnPqmrB3Aq
	 bi8RNze34SGTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EAEC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167359088741.14789.7416469353004217775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6379f79087c0121478f857e946ccb5318e9b8d5c1bb009d1d9c37280fc927f2
Date: Fri, 13 Jan 2023 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673590887
