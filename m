Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C89D530
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 20:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 071E2C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 20:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679429886;
	bh=2eXinldBBBbIRK3NZyEAhvvuuRBYF1kWSdn+HZBwLYs=;
	h=To:Subject:From:Date:From;
	b=UVUvjzlQ0QIn1hwxlL41baPiEGHSJpsbFJaUedzrUECr5z9TQV9IYniwrG+vZuEQr
	 NyXqjgHRON61LZYs+l9Nlhp5zCfty0Puc8TtM06+anAK5CV+eQCJo10XWg53Z8Xszm
	 4qh7jVFoYflQRq8ADeES7aXBBgXmY7es4XKQSZGXmPUQeCPw4VRL1i1XB1hXPS4rWr
	 hp6xcntkD7jMYb3Y8OXqfW97Q9lQ7LFU93rcYtJyx1KzEuQuv8gXcsV+lKzcLZoaSG
	 zFfTgNVp0wcLNeJnU0uAGuqUHx6jd1I9pxLX4aNE07p+YYbT17YMRp2mof7UuBq7Iu
	 gl/peFEPcYCeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2F5CC6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 20:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167942988592.31186.16753791398403939986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139559624347e9ed74cb54de7f808796919e3989b334f53d04e1a807a8d252b0
Date: Tue, 21 Mar 2023 20:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679429885
