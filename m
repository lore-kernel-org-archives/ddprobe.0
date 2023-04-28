Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420E33220
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 16:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4BE7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 16:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682700905;
	bh=ySi9TYSJo1DPgrOoQE1Glc/eiYCIIbNiKcFDWJjq7tI=;
	h=To:Subject:From:Date:From;
	b=YnpMOHmrSCeomJsfG/JzuwuIcd3UJ49yCLiV0d6amgjX0j3pgh+BZ6JiGKRQqp4tO
	 v64s2E0OnbR5o8Y3tfiNaI9cvcSPnhQ5y7REhQQZ95eu7xcZvsmjCkybzRr85XVdPK
	 /yWJyGygx1vvopSoGWyLV3pSURxO8FowpqshRaH9lTOvcpSNvn8HqhMeIMn+muJL+5
	 DDYxiSQx0VGLBSECUiFzx2JOT5QVZFR3gIBYUKJTATfjkLOjTVqmzQj2lUsccigYUv
	 tai7+HhCLSwkAVrw2QA2hiVAS60gW3K49K+heTA6zatPIPNSBfu7wchxnhxkR+yPeE
	 Phj5q6VG9AUUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCD2C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 16:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168270090576.28550.782175922706547916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927ff01b1a677c6225f936c2eaa754c1903b7fc0de19047ea21d65d9b1ae7a4a
Date: Fri, 28 Apr 2023 16:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682700905
