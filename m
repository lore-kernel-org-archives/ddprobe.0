Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2447A6FBD
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/4eiJVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8771EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699685896;
	bh=7i/MkgyGerWYn+hiLU5XVNtLNSFnGHBu/SbHI/OOfnA=;
	h=To:Subject:From:Date:From;
	b=K/4eiJVqJbo3qL/zLUHOGqzW5+iCYHaN24RRwr8xUCnEWa9jirrwCVevT0r8DjtK7
	 cPHTL8ijhc4Yg/Mw5CMqgUtME7lBffa2L1zmZ0Gculk4tqYNT/4wuL1RuF3O61vUjB
	 EBiLTebrQ+X/srSDwlVR5Ba6ON9XKWzdgCE7jO2w053oi+gvlOhTjWJua7mziizYOn
	 GVROXDyv93nDkEjAeYEt+qjLVg4++GrPTcCU9Ru+LpfkxahD03b3hYqhdkoMfITqwi
	 6wtIjj37N/yGbXs3uN/2OPo4OHm3DJXyhx/PF6b7Z0StkF6JN3Pt1w1ec+eucuQK8E
	 HsE8JFJK33pBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B804C4167D
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169968589642.22783.7457691160148331831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6b04db75e58cff3dd5c2c86649d64ecdb04fa0da7fc02ac100e9ba2d2f3fe7
Date: Sat, 11 Nov 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699685896
