Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F661113
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 02:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1324C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 02:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686277446;
	bh=hG6slL7NP7HgncjyKw5gxKGQ5AOvy/o/iap+H7QS05U=;
	h=To:Subject:From:Date:From;
	b=WMZN7xPe4J0JxXrixvbZyOxkCERDsDD7uLZSaHXJkGzJ/L/TTOmkSGlK2CvDhVUw6
	 dod8X8ouYQg7apN9Fwlpt8J1z5GqrfSshr0YAQhyhYmadQvt+hTLyFQlIF1aLgGS3T
	 RSPgHeCwHXVWSUoaJiIqgsGVxBxhB0uxUiKmGLFmTIW7KDv9SgMzx2OBBsQRoCK7/a
	 UWmw0upk4dXhLC6q4PLmKLvRIF5iy5h8z356JCoRBmd/g9f15fa70r8HV0s2nRvQpF
	 mx5/wrDzOuA069N3VK6rIip3CWoL3hr1o66Bvnpk0RQFAcR9ezjCOc5jvUZdGNIVzS
	 LeNgh8kL7rWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF40CC7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 02:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168627744582.27038.14707837757276093800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b511a4bc576850c5088b7d0eb47b3003275afb421247e7fb1aaf9ef3a0868404
Date: Fri, 09 Jun 2023 02:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686277445
