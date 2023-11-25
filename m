Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7BF3D301
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYKp+Ynf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C51C433C7
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700923696;
	bh=iEVeu3LjJfHs1i4jfi9wo7zGSvyZOyCyGEaz1TaMX6Y=;
	h=To:Subject:From:Date:From;
	b=KYKp+Ynfvb97n0UaLa4lscCS3+wQG5Fi0b1sNurVf88A99MP1zQipF2Nr6u2fAVAj
	 WR+GjLqUaoVUROpLJKQ2C6WxhsG1AY8n3dM5emtTLPwadnQqDLmVB9in12xalweL5X
	 IfM0gQJyGZPg275OtGZPHPywUIMxEDuW5YSyfEiC63B3ji4yj8RldL5/ADTqkIlSSB
	 BgXvlfD0ZV+2IgN9yYmtbVSpbF5mLe+fHz6x5IXs/woXWnw6YeWrd9o1sj5aEGdtQE
	 s2pDNZFeD5Pv+ebK4exlgeOBewWE0wTrIuoswkoUvXzLHQ2KIYyglssMAa7Yrk2wRK
	 75u8V43NsvAzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD32C4167B
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170092369642.27432.17924001443772769871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e66eda66b45a036708ba0eb37c5b62e2fcfdbfa74a20b208149a90ff5fe445
Date: Sat, 25 Nov 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700923696
