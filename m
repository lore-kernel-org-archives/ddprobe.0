Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4055C7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 13:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1068C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 13:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678539905;
	bh=k8j210Wc7Yf2gpGRUBPIWnaPmAESA7EGVffhwqY4ib0=;
	h=To:Subject:From:Date:From;
	b=Yg9xDea49PaJlXpwD4xch7e7MJ3usgErGjoNBE3mi6W/HuWMC+hV62IVgoyq0VQaZ
	 BxWwgQDZ3Pm7HWUAEL+LiRX0PGzNR7sXusGj6k+BKn43PEHuadlnhxNG56qV2OdRtU
	 QB/D4qetjCZ409yYgd+2p6dGtHioImElUgq893tiXK3uVOVMpnnFtLOJRoYi4J4Vjw
	 pcD52QlruVC4riQWMSx2oH6yYPmOGHTEj6lCngL0vaONf7WNLhB4Ajc0VZ/0D6szHD
	 cxvfLB3xKqmbR5ihksBfJFJ1ha3wYX9CSXZ+aOITle6Tk7RQ8HHrKXUZdQbwSURA8c
	 ohYYHxG7J2O6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9445C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 13:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167853990580.14773.11767860962617009881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c6f36036694617a79491bc827ac25827bb2c538acb91ba4173d9743e009711
Date: Sat, 11 Mar 2023 13:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678539905
