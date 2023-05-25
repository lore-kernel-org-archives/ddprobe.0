Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401DB1EA8B
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 21:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDD8C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 21:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685049305;
	bh=rzBQJ1ERbnUu/+eQk1gxbbudzfFyEXa2tKaCUjhnUDo=;
	h=To:Subject:From:Date:From;
	b=YjpVk0DOr+MYQuhK/KeWsjFLuCmbunGc7E7+cbpgxVILj+MetZU0hIpBNdmnJjM94
	 DpAijPZwdPeoJgi2QGF6+VlZKlwQV78KDPQniiLbJ9tdTVxlTG4iQU9ZBkBU80pMt+
	 ySVqIFtM73FIZ6yg6LpMfLcBNeOXvHL7qd5SjAfaAV8kwKBwUSJBTmyeX7VPeS2Tfa
	 ZygmbAeMSe6nwRgqljm8Q2uF09miJLboy5BA6BKSYJbJSrbggBj3/enOjokHRFEkol
	 DpQCSPj6NwegOnxML/RHiIFMcKe8M04ctcyDflqsVIbA32XN68QxoCXeOTfkIM95Ik
	 Sypn8HFK5IoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C699AC7EE29
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 21:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168504930580.3285.3618217965700887340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a5af198b85287e72e7b5eaa000ebb3231c2c5e4150a0ac30a5b083e9037cee
Date: Thu, 25 May 2023 21:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685049305
