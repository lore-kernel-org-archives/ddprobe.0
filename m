Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3846F171E69
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723031754; cv=none; b=pP6vfNZMHQy7Q2iIoY5Aq3y1pwYYz/ku+9nQ1WRZtfpUcoHN5BiDpohSVXl59WAbrqT0Ru6ecl4sYILyF1DAZRXr71Hg2MFFSz2BdkxwnKcGN6TEEWtc398KWMu7OU9CGB0r7eg8CuWqtlhMNjDzm3FIS/n6mgsG9k0FsooW9MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723031754; c=relaxed/simple;
	bh=FKYzn6rfKbztZtE3H9EFf1EMsrk6ABxa3CkG1DIjY7c=;
	h=To:Subject:From:Message-Id:Date; b=nGoXTm710+7YDpDz2okeKrfVB0bPXwUoJ8URRRg23VnYOLMTtWa2VpWIzQHx0wZPX/oDdKs6Y5H+GWJiUFshqQXwwdJ3pp2zsK5yyg0wqzwWToC98Y6DFNf/vAiEiyxhJo/WJkGo8YVoWL6k0M1zZ3kn2SoxJkkG+AuBr/KNsaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4Atg7V3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4Atg7V3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC604C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723031753;
	bh=FKYzn6rfKbztZtE3H9EFf1EMsrk6ABxa3CkG1DIjY7c=;
	h=To:Subject:From:Date:From;
	b=u4Atg7V3ilr7EFqRTLQSv6a0gn4I47hrTYvhbxjL4hOBujuLPYGCa5nE3HIHImssf
	 0wjmob2HfdXch7XSZFYrq4aw44W6k5z/ySDXBcU4jG/cJJb9j3yNm7Jk4V8CMXYRIo
	 bG2xQv27jN5R/VOU7MuwdG6K/BIhe+xsNKjTDPIdSC3ZaLzzKv3YehItImGZdM+Ico
	 uQyTkR9H3vQQhni+kNtF0iWZGohdy96FDzgeeS4VMN0R6diCvTGwTUYNsyfnQe1Xgn
	 IxkmYHHFB99Obyys5TM/MMJ8zp9GA648pxWThlHMIwEmaTU4PYQmAf4Ckty1T9H7IK
	 9K4P45gx1dnlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997DAC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172303175359.27847.4197754694705215621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1fcde417776ea5933a4a76762579f4f4c06674392867d5142d76a744c325601
Date: Wed, 07 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723031753
