Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF19186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E030C43142
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666865454;
	bh=zYFkM7BHVB44hW5/jP2MXJojZKfFPqBh8SOoQmKZVNU=;
	h=To:Subject:From:Date:From;
	b=Ywh+NQ5kZDzpuCWncFDBFkLDcvkytKG6VGwIiAj2QgzBFTkl9P6Qql60/IogUOfux
	 9WW6dL6bTMZZIJVCjy7Ze55Cp9FOVpQyCvhfoigB6cqw82morRgW+6B58UCB6t5qke
	 k0CFGG1ez0TciUmnaVhFktf0uga9FH1GTsGBUXPWZHPFtXbAL5mlvvRFzZH3J0t2Ec
	 2qmiZdJwmFv3M3lVcZCv4RCtSn6DbQbz0bx3EnKoazt8cgTfbRr9zDOcr5V9JNDttg
	 lV4Xqra384TuCu1/q3KQvosXLSCzWhv4V7EHfi6Kd2kQTQjE/w05Ar6/HHm3lxffha
	 x9NLD0B4aN3+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558D8FA373E
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686545434.3060.2084968794279208300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154cf21bb24e52561fbb55a5618623e604ee8f0a3aba519637b352c70580a3c6
Date: Thu, 27 Oct 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666865454
