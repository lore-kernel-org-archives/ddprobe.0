Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1233D86
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 15:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0806C4339B
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 15:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682694905;
	bh=S982vuyjRJHcLBNC6iRKq6j9px7bBLXZmPUKkeqaJ7Y=;
	h=To:Subject:From:Date:From;
	b=isXx88bCQ/NTeRI5fDTu5IW6Hi1lN7zFUr8ABHvzH3s1PhzjoJ4POX9nfBWf7bpk3
	 vfTbZiyVobiaX77fOeO1YceN7WHirtgm8BHhdXf+DS8Ymg7PL+zRJWPooMypktOcLy
	 v0X3I2INrZ4J/+yrlTXp5e2bdz83SV0hU+IK5J/s7292HMabf9fL6BQxCeJOJX86CM
	 XBNQ/O95DJX0mROyuJ/HqXYY6MXz+YwTV5P0m3pGkwxdZmwc6AbojVpZpV3VdUr2yb
	 4Zu+ozguRGDWO03BSB153HuamKCGb2mO9qL6p8NGLsfhhbmdJlgeFN7KRHDLwCVnP5
	 u1g/+51YYmc7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EA9C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 15:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168269490573.10366.6334793622393371056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842db5c4c69dbaea8657879be3dbd7911e3f5c9c94a58cc6cb63b0e9b9c2fe7c
Date: Fri, 28 Apr 2023 15:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682694905
