Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03D57C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEC3C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672887687;
	bh=xR8B9rOP+Ab5hYMXu1wOMhGxsEhEOohKgimf+rBoq5E=;
	h=To:Subject:From:Date:From;
	b=qNM7Znpy3hHNKE35EDmt+4Kl3NcxODWbqZHkhUjdcpMI8Tnys65vzBzOLToQzy2tj
	 BwqYMJsy2Vt3Sv7pB3qxJKZqOv8Q1tWbRY9K/qkCGm+Ia+CyzI3pRfsDnNprWkGlki
	 uxuq6CssaQRD6lYQwZ1QaTizwqDLilMpt+l7bdTgNvgeN0PcC2F2RfNtUCwolwmhAE
	 qovf4E+ihdBaw1Wszh/7nrQyjPJ9xxfYIi1IuzA0oTWj9Bzb93Li/lsceevNzleWYC
	 I2SA09/Y//9h6jle3Xacn70+WbG4WRHLhAdZplApBejwWOOGEQZnWlqBANl6nWJBsM
	 qx7Wk1P5ReBag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62191C53210
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167288768739.3984.1094987943378777035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af100d35bae54cf4aeb84b66d0b704e3331a730f8deba941adeabff54c676fc9
Date: Thu, 05 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672887687
