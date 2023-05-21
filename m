Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517307E9
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 01:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA403C433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 01:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684633806;
	bh=PopdOHvr8G0WIeqsz+cw0Oxer2PlIyVsjjW9TI8PDCg=;
	h=To:Subject:From:Date:From;
	b=hIJOM+bF2NdxaQZoMmU6SSqT759ivpT7/kKTqzjyKv7xlsABG1pHQTzjNmy6GDhZV
	 QYMUVivhvCUMTPXcKyhb5xb5sqdx4q+SV9MC2gz7IEUnkL8PxfLC4ekoLKA2t2N4bt
	 sEK5wrSDqLlRI7PocRkVPgnX4JfORi7IUvhprVkvhNQmTql0P8eYz0oiKnAJoHWGhE
	 kpAF7A4UxCQjEPkOkVd+F0XxsLJmbEEXYSDYXFqX/pisuyHg2dY1RjDjTwjxJ1aYsJ
	 RAW5yGjnGcCiXLeVa38vTOZUV2NOeGmsmDn+iL7lMKX+jJ+b1SODuedbFYSxZVImR7
	 AC5Tipzq/I2RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFE3FC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 01:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168463380580.15580.15654137428008905131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63ef21634cffaa2234f9026db3a4b3bbf09385533e6d6d7b06dc0489f849548
Date: Sun, 21 May 2023 01:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684633805
