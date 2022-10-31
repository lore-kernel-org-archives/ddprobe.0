Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03FD17CB0
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74911C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667185254;
	bh=/n5OZbNMAwgjbecviO6icYCIBhrSKJSUO6JCOBcu4aY=;
	h=To:Subject:From:Date:From;
	b=V97ywlQ0C6p+PC+/7CQyzknR8mhVMkqokr4ke2pRo1iDUWk/OdZCrOCnzjlr5eV+P
	 tVPl8imbmrJra3IgNLDQdi5j/f4WduCiLgEZnW1ih7nic4dd4NLSqDONLzOzzC0A9J
	 DTbTksXdpNytNUeyCkkymKeoZQ1v1y5ukRpwLaG8/RiKJtPtBP8yUw1DUNpCvVGJlV
	 dU7vHqOVlLFdpKajJOdxrTZqPxxeHI19ORrJUkDvm5RUi3IAfog9rPBfb/Hbe7ovul
	 OjMdQz4fRey9YlyNb7jOvRBxP0504HC9O2cMACJVGXsaAv1woR2+uZo6J72k2AmWDb
	 Y5dl4jVF77H0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549A1FA373D
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166718525433.27900.6236083195079249108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b354600a9849f3b2ec7d8980690ed5148a6ee0ceef6cec4c1d727d537ee41a65
Date: Mon, 31 Oct 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667185254
