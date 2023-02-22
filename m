Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4629729A8
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 19:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E759AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 19:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677093845;
	bh=yhpndE9o9v859lJVQ66tGdXcWM23DW90MPZt6Jx9Tps=;
	h=To:Subject:From:Date:From;
	b=EJzgkjvc77wh6p6avYGpgF4r+5OArChMlh5VNRPeq/VOtjPZeiUK5awZNWiuHFKCs
	 Kyv3i1ufQzoC3SMGwwd0K7cxNga5PimCQWLZhi4DOPFnSglk88tr8tPBgZ1Qzf+Nj2
	 4UI9PkBkBuw/py11JMFbCf4zfWDhPg4/gRTCmxrMWzlGU8WIYx0aYeK1UaVkkXuL/f
	 BHRikX6o/0X2ieIf4/1uyJL15SYgYowmbrCeYQ2hQLKGe4ow0iVDOwEFOeN2NW5E/+
	 KmXxBBlujTcgkBVPLgGAl6zx1sPaa5/5ZatHfgqaJz0obS4N6K2KDDTydegfqiwQrc
	 yfi/dkla73GcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C442DC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 19:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167709384579.29066.15620107614555490317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8d5e50050d0e0e574ab78585b90e1764f49439adacc3d0a4ea022ec9fec08d
Date: Wed, 22 Feb 2023 19:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677093845
