Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149BD4A17
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3GUwsjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94E8FC433C8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704246496;
	bh=zynj1gK3DSAM7//GeOB6bPQmLiIJeitOpo14m+JTXc8=;
	h=To:Subject:From:Date:From;
	b=o3GUwsjt5nQ6+3u6rbw23buH9dQgIamleKaVl9ER6fjk0iJSZ/O5MOlpmC9k2HO1F
	 +Mg9zrmQeL1Qve9oGv1VdYBds5CZSqVAUQUikPPh0Ah2/tWxyRJsvcl5nNSwEoI338
	 RWI6CZXsXg/9WXLeMCkaxTNSMcUADLJBgOHPW17yGPZsQSr3lmSobPwbuHncyyVHkh
	 z4vkvtoAdTOM9voDG3TlPBL7xUB1kGGwWXDyYVMM5u6SWYJJGEgQU2PoxuYlZMQm1l
	 nzCtd7YCjbt8vh6nnnHwUPyZdwatfQbF+ALWcwuwsLYw2SbnVGbymcMkE8kLUKiuje
	 9smtExAbPIYrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B38CC46CD2
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170424649643.14141.17482804181801320757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b4eef9c981c18c3fe1771438aa0732c3a99d97f7247ce4e79e19216fffb3ce
Date: Wed, 03 Jan 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704246496
