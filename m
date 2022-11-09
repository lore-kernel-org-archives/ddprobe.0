Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996D517CD3
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A2FC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668003654;
	bh=MrP0Qjn/E510zBpAMRVIiDJjIqZXCvb14PfZsM7+TrM=;
	h=To:Subject:From:Date:From;
	b=p+uaw1s3WGcoIiwxGzI1ibHtRTV+x4of+BhtGgmrsbYkZKngmwqqDw72PYW6zHGRN
	 Y2n5ICbYln4dJzXep6Ky2yIFbfVLFddg5dbZm0Av63pk5gZ0Wq5Fobc5KI1JGX1Qp7
	 KgrQRLq6aYZcnS7VaAqjjUY1/THVlA/+I8Y2VPZ1KzHTxXpEHU25M81AYwFkQBGRof
	 DvYQci1o7bf0DzODMgM0b06grRYADdESmwHMM5/MT0Q9G4p26TMgv5A9upWglOyeNs
	 iMotgsJ7d+0cs00Sb1Rbi+bw+4w1PhAVYmb0hxIbK0nZOBa0ENEKyXYR5BJqwPPG8i
	 Oc3GLXC5CRYCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 580C5C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166800365435.26125.10207481298542806688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47abc6f95d2f8c972f077a660cbe4bc1f82d0b940754f7377688871978b51f9c
Date: Wed, 09 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668003654
