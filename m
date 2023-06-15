Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C2D7F9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 05:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8D3EC433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 05:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686805628;
	bh=RsdSQC2ass6PJ4GpbG9M+XhQv+IUDHNga8TY245KBig=;
	h=To:Subject:From:Date:From;
	b=fEI/k7y3l6xv/7g6XDc5UUqHPzWp5sjnDyYt2uJgnUnZplGZwgf5DY8Eb/Dl54IHN
	 qMjVBaytYxtq50zbsNJDC8WN/XN53lb4g/QfaEbksG1oHvk544K7FI7dxQP2qosP2N
	 ZvRvTxkZmeHqVo4FJLl7yyuS99NnNQc3oF1glRRzAihcF5j+WbcD75y7Zb24HEaiKj
	 Lh6yD2s6BArLpWobdMyG3GS3Brmnieb55/o4/EiSkavuw4B+Kf8CycJ+npAAbFyj8W
	 w7E9oyCQE7rusRvfqjMiTJ0rYfShNJco5v9iqGgG8H9dcCa7Z7p58SQqKy3YzrRzUU
	 l6pA9yGXHW39A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8046EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 05:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168680562876.25665.12221123760948929462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e90a6f576607c1bbfe02cea112c0c2d1f9aa6543d4dc080ad4fa3a55cfa5656
Date: Thu, 15 Jun 2023 05:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686805628
