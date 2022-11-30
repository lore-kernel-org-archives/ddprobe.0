Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB95AA42
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9ABC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669800654;
	bh=qKqiO+zXNde3LaX9dOrJ5OZEjoUeFe7aXEPnTqW9oAw=;
	h=To:Subject:From:Date:From;
	b=g0WPuTKkhkfXcgIdpv7+ZFtMOGsiOQcvD5xWbBiF5/sVdPBRUbMUujtKotDSx0qrk
	 Run1lc466n7z6YDNhDGLjoX6VkGvNjgL5xsTproQ5W/BEKgVE15ApDBKxDrRfHRK8C
	 rbzQGjJlAVdK+08P7YKQUdtLuD7R8SHqp+996K2ofYZRSFFwiyoLjsY3SgH4Aaf3H3
	 Oesm/Ku/qhRf4o4LccFlolFfkXgWKyoiD9Bmm0LqORT/DsUAP8ZEcCpU9CqDVJVDeF
	 tA5BemjqWdVQI+crplraSbkPwfEjWIx3lKFB9LPHEMsGwf1MdYuIdv7j8KnX1o0GUJ
	 /ogqlAayL3uRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542BAC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166980065433.5295.17969411106348371734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65aa180c8cde884ccabe4dbc7aa3a5e34d5b01be373067c1cf772fcb9d49bfaa
Date: Wed, 30 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669800654
