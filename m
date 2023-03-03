Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAD9139C
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 22:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFCAC4339B
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 22:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677883025;
	bh=Z3Xd5cPmVEt/rhc2RKRsaTJ07YAMNkiH5R8xsQXJrRc=;
	h=To:Subject:From:Date:From;
	b=aIZ7ysIcsw/5gECpy4onP7Ye1v9BzyY9xYZSp5LqiEwdoLx7BZUkLNmR/QInpCW7F
	 v5X6SQZQ01V2QpxDSMQuE/awkvaHiCLvplx636UgKJ4Y7KhltN49ucrbiV3XaJS/9Y
	 iyGwVOqKmgy99npnzU/LxPLP50+bAmjWSKXFhYQKo92D01Y+20zpZQCTdKS5iFBGkZ
	 nuGvOa9BaDDvnxMPxDYwJZsvEJtpVO30FidQiPDuZjkAv0iwsndUQjA7UTEUBoYU6i
	 E83up/SMBmj+Hbd18Yz5P0Wi4NDjgWyxKAfFkyTCHvTMDFyH+TAq3mimbwKakOSOyB
	 a/85iNBBps2/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA79C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 22:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167788302576.8181.15710142776777092175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4d17682bed32e36f6d56459d9038cce02ddc9cae9fc04c2d0dcadd27f44fdd
Date: Fri, 03 Mar 2023 22:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677883025
