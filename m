Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AC0EDF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3E4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670657487;
	bh=iklyGAMo8Pw2HVkaiUKNPBiuXXkqtGdZ4PvEQaJPhtM=;
	h=To:Subject:From:Date:From;
	b=o3OO++8ehORm7PUGPvYUxETi0uU1rw7mjGC+7b/sb7c5YeV1miSELw1zgHANXAakL
	 j5+KJSzPmynMHGLGFymWmIdJxpX/yqZWUbU3PKt4izqDFc6VAtK3aVZi9UVr5vVTG/
	 DkQGJt/Y3QViSkBrqox/9axBQJ2+GhF39hW6XZMBzelF4eVVwrUnSjc9fucEoIkGSA
	 KLQZtWCQKEwacjngytaSEwtqUTRFjENGbZn22Za52CwLSNTxuwdug/2dG+NZW9ymIZ
	 AQLIYWZkRdthpFlosIwD2QxbXldEe3gyjP+Vejkmih85hmP19pL84dL6Fbr/gFRsKb
	 tSvJssrEpOg7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 758A1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065748743.444.7014501714980594797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceaf6f517819ec336dda844e23be1db8ef7e9983e20e58ab3d0c0415e7af84cc
Date: Sat, 10 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670657487
