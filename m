Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F303212E53
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuL5XEQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85850C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704965296;
	bh=hx7BSaNa+s+TUMHmYLF7Xr/BHba3cPsJs2KmiIGofnU=;
	h=To:Subject:From:Date:From;
	b=PuL5XEQAep8dCM4aWdxW3i2fGin1WSB5AiVYLq1ck7ie/VXRWQ0wU4SNLw2XWQqSR
	 3gAWZ9AR7I+gIo8eKI/jdYf/K3ucD7zGlqM118wWGXv+lZpOqV25Y7n9G4Lnk97PyV
	 WVyE7c3/rC/qrE1vhunoXCS8AFW9sOm3Id6ZxmhYhzO8ZzzE+V1BP5ho3n/UUbv5xb
	 Pa7mSHEIHV4VPAoVjbyjRdEGoa6S9FTEV8GRQWJuEVQF4XToWSpdV15X9AEXqQLhFj
	 AatHrwaj2k4NI52Jw1dGL7si8YlC3k5+nARMxaKFvqAReL4KHNTq+gXO/Me4UThd85
	 fuTnn8JEdg9JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69393C4707B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170496529642.8430.6504541762467255392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8edde71081df2d22be38362d18701f52ce8cf943806d69089a302e3d5cebb8
Date: Thu, 11 Jan 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704965296
