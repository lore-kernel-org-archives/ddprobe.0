Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FF953A6
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 23:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9184C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 23:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678147145;
	bh=82lL+PHqXfgz7qo1jiADcsM/ngPtb5RfSXWJJe6F+NY=;
	h=To:Subject:From:Date:From;
	b=NriBCR+YwxzLKJCF+CPCMppIHBTd5nh7wRR2M41RSHEh3bVMIhRvFxfPXeWoG+zzA
	 q1j2QwmDCoxVKTB5+lOyOXUdLJ6RM2uAQvTMqpeLeBSFNa37RiMiw9qIpn2vjf1MSa
	 281nbqDP13xEGLllqJHxq2laOUBc5KB9m9J6I/3DYwrlxBTqLac6dnORveXQS3LcbA
	 Gh3hMMMUDdglAdWf6qGlpVFRMEfM9C/P9UBEixGJ2ihUmj7b2Q9YIozEoXM5tst6zf
	 emoMjKbhMm4KveM0pPRX0eMtof1A/fmeJU5O4w1blksQwykJMa2na1KLOEqk2jiuku
	 lFRqcEFTiA6Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9301C64EC4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 23:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167814714581.23408.11276567812333734231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129a3beaba3ea10511f3ae061c7df67ab9df7a9b4a5db9b2eb49166e7a8cceda
Date: Mon, 06 Mar 2023 23:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678147145
