Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AE5168D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 19:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB80C433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 19:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692298988;
	bh=pQEWLGsRXKQkTu+lQXKRM+0Q+cTdgwOgAIetEig9OsY=;
	h=To:Subject:From:Date:From;
	b=MKzO1Rx/7569VXf3X3aDWsHA/useNpohk7ZYc96fX1fPylQ3LKQMbkAjo5Xm5ABvf
	 Qw65F6JFATBcTZ73n5hWIhF3Bv19fOp3LdBnBNPx73r3pLcfzTDhn9k6bV3+0I8mvh
	 a9hUxySWJ7pp2+Hj2Xbhw0izKAOSftNl0XWgRg1TLo8ZBJKFS2kedLvXsvffVI3mxM
	 /CfuqezzvaGJvtqxGhUuVRTUt7HmwmOd1RpOpTXYDii/td+ikdm/43cNkVE1XhdaLd
	 knfUqqS31qhcF9P7rJWlZ+kbrgaEgMWMVCY9/pq7v+Y7sbiP0v96JGcRVoRRSXSx54
	 VCUPjJDDviIAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB565C52D72
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 19:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169229898868.1816.6186912563357563570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fcca78e3d87795fab4d7f55ee51ef94df22f5e16caa2e330bcde9966bb5d9d
Date: Thu, 17 Aug 2023 19:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692298988
