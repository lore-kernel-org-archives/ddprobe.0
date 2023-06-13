Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9222F136A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E11C433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686687428;
	bh=IfXDVUJRWsM4B1PFopADB6ZwBFWvdd8dPbAQVj4GK6E=;
	h=To:Subject:From:Date:From;
	b=GAXXiZZmkCDpn5bxX4+uPJdXatrY9H60pW+3MqzLJ/j6yrpEoiJdRvadNj869JSWt
	 xzTmJ83ABaVfEYYVEHZCpT0ccLKzKMScWu6AJAi4Z1DkbfxWgBc6nP0iG/XHD5ih/V
	 HxzlyKFjeaV8glz/dytuoV9hXjtOS2lSv+Zwz4FrmhCP9lvJAQ+OOKnYZp4IGXpgjl
	 udQ/zGWE0Yzao4bR1VucLMElz5Qq3Z+ODJlkI2L8LElrQB0nn7uDaQta3ZZ/ful+00
	 ti/YjtBSTFLBDqcqMzFfcRSBmNC3gsBaiV7ze48UsQrSX9kCVH7CAEjUDchEbMx9Gq
	 QLT51XGuR+1ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7FAEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168668742877.11447.13412752558575661461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5228ddf5f5fee0ca1b5bc5c70e90a3a4fed6c1ae395bca9ba1292a01fe7f335
Date: Tue, 13 Jun 2023 20:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686687428
