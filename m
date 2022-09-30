Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73DC4C6C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68C09C433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664551853;
	bh=Dm/Q5fVNn3KuBrp1w4kPvcbojkn99zY6lb4bKUWaxH0=;
	h=To:Subject:From:Date:From;
	b=NZ7I8luAPifzLfazE00otCD/hIzJg9JUoJDX1xM9Oc5Uf5jgg13EWcFIYVaqiZHi7
	 PDzKIpvw/iq+4ivW5/7E7kXl4H/DR08GLDx1EQX9HY4yOX5VUXs/Jn6S5oao/TboRZ
	 DDgtBQbHUctFiA0Oy+HnPYd/glx8iy4L21qha/sV1GCeAnFv7EJ64OWk0MNByW37bB
	 cIrAGghdeoMskiBiHaGk32F+hmTfQ40It4A24savnfDkg45EkOhwvmtpP5khwPme6k
	 J3hK7Xb1d3wkUecWfYgZXXWyL+PbuhY7wkKHbkw+WYQKe6FW2Ny1qmE0N+a7lohSG7
	 e0JGyiFz6YDgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538B5C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455185333.14804.15923174775518239198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064329a5cee82c0cf3261d957eda91ed2b91341ddfe953b34d2d71ba414b7bf3
Date: Fri, 30 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664551853
