Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DC6125DE
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdtstEt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94E88C43391
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702975696;
	bh=yrc3VodHoRZjqcP/XCxlmfjyt5pMPr9Vc8H2xN0IHWY=;
	h=To:Subject:From:Date:From;
	b=TdtstEt/UbcR3B8rqYS8EXkoc0+2Uk7qjDtDr8+2YUzcFkxjea2fX6ce0UlBXxsoX
	 /cbkzrwwQTPB7z3dagKLPQM7yCc+HrVJOTLPAfhH6HRKnPTf0TY/jhIWgY56+lqIpZ
	 w7weJMdTR/OT0tKSSU519dXjaVbPcuYZXwFgYxt25VPwImsuND7ehoNptkXxii0ntX
	 pmbC/6zFPmraATiIYAgIFo+8WA0VlKBL+z2TDi85bDxiWEe/g0/LvgRVJYIuCgsVqD
	 G2HPn+7vQa67kR+0t2DqyP5jsdqPPhNz2l9zmz3rrdDROwdTeBtt/Ycx9FJ39A0qLP
	 HJgS6GWYI+x5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79AC2C46CA2
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170297569648.14158.10753524720712683259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7bb55562b71cf3669e166ba2aeeadadd23f420517fb5610e97495c444c90909
Date: Tue, 19 Dec 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702975696
