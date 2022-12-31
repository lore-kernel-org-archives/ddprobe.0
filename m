Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D095CA7
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A7AAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672522887;
	bh=1aUkLGMeo2pWWZ2IfPU2ZmiR5WHCsrHKoUHBAjiWX+I=;
	h=To:Subject:From:Date:From;
	b=QVoPmYa1wsIJtoH7FwWHhPrdtBksk08wUbzxnXB1O0CwD9mbjTsjZ9M4ALtM2Asga
	 XOwwvxxZsfX9fK2Kma5auP5HJHz4Z1rHPiTCLMDYCBCbDE0bHfctsy1NhcuRnmyj+n
	 HfAQpuQA0LEHQ6E2nmA4+S6qKJ+CHLs4ar8t34f4E6GYsYDHOIXFDFaTyCQ1xDwogP
	 AYQBbkzdDVuihQZDmyDmtU+84okeyaC566lcZKYmcBHAd+2adXEo7cFXp5x7B7q0DN
	 jkX6sr5HuvJB/I3sZv/x5tjq1m0qturUCkTYtRq13cZhDJ9TDSmuC/mYMU4xA8elii
	 LumNmlaFLPnZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 744D8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252288745.5663.1124685548973372190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f624a9f531518b65eb6ec9a6754349e15e6f4b2dfe32a60a367939bb7f6953
Date: Sat, 31 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672522887
