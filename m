Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4292D636
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 01:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6980C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 01:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677548765;
	bh=ilqlSctzQxTdDMvQZh9LZv9y62UKsSsFxH1/IPGV+Ks=;
	h=To:Subject:From:Date:From;
	b=IbqYYYexEYP5qASfRcJdpRMu7tmOyWGwwoDzZtcOAbj0rh+iFXC9NRG2mZM6fQ5Vu
	 kyYfDyFvrv5Z56SyCmlzHy7ErEe1YEfc3zNsgwySoyjYOOBdHVboIkEUOQmT8zvxiW
	 2yWcc+XkNdcCVJ0WgWIND/pEGTDYYGPUoTNkWEt3hzC0ZpaM1b+gbCv31t3UVxhMqU
	 vCjsHE5aoozWHY5tI8iiCJql8c0psjcsZavx0skZoyGfUVOTVcECp3uiOPyzsH0SXz
	 AnwB6/HItk28xBFQIN2Ke9ApTqvqYWv6xkx/ipNP2HVlw3p2o8yuvXYEWZi7HEf4MW
	 zJYuBP1oVjnhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F54C64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 01:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167754876579.17909.16314143149579988619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5579aba14b60dc09c0fd34c39db86af20a88c3b1b71dc6fafe0efe9819985d
Date: Tue, 28 Feb 2023 01:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677548765
