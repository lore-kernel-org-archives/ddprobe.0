Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7E3111B4
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 19:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C499C433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 19:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684350906;
	bh=qoG0zXRhOgnoqQaWHVRfMy2vQNCioevhcxa9eIiuAes=;
	h=To:Subject:From:Date:From;
	b=Vz4+27AmqMbdH5VHRvFknYRB33fcsMNTifzrhWBkg583VJs/erVOOvp7vo0xMRr3m
	 /BCpGw7FZ6pbn2BUIOnpZlfmsCQeajn5qvnh1RovkvR9XqSnEPYGx5M+15XolGbHEe
	 qILFKJ4JKin5lN4VYoMUvx6sD9VZMx5cfsTVvkWI9Mm88eJK/7hkc3ySwl/hJWhHSJ
	 DRQnJNSF3C8XnxutYFcQv2gm+o+J2MB7pkda4pVF/15+iz/QAHG8/WFU4F1g3LVZvO
	 ePaygHkLBEyNM2fphTxz/kxycI36Z3BjM01tUSkwu+DDrM8vSbsZbOQEakZ8o72ybU
	 q+z73/8x3dZ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D692DC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 19:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168435090586.3429.4590561648737073715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2c771173f47bcdcecf04088febdef47dddf93b2f94f5182e963f9043477667
Date: Wed, 17 May 2023 19:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684350905
