Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333673C30
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 18:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DACC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 18:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679596205;
	bh=KwOtkk+z655B4Qtw05+bt3DLItg+whlVzW5NH0EaJEw=;
	h=To:Subject:From:Date:From;
	b=hTlFb48Yc7TNQ9PRQl1ZHhVbdvTbF5tyx1VhITq/sW6xHLWVTcCRD/8rnN3Vsx9YX
	 KM0+GpB5wuMtyMWDvFKhQHKgqjaTAk+x3lxeFJe1ky0X9CjtICRw/wIUFnCVZ5PmAS
	 to8e0aPufnhigciHgz2LUAo/NmEPJ67fDYmtaE5ZAawi7MQJwthc5LJzJ/vqoH1oHG
	 DDWsdFdqjVveEDraLgsn+jeqmyQLmE6MNctqcG4cOOa2/DDUC/GC/teZsdOMkPUuPk
	 b4LwtWX5gxzxJ2W2oODgefN2Y4vVxxL9P1ybVzc+vwq0MxiUSWMzUJCORgq1ffkzfL
	 woWULQ9SXKbfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC08C6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 18:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167959620575.9958.14492950494592670456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ba9a450f943dc6ff79c63cee69ba59e22da85f6f4c50e4cbbe6a01e3f92b85
Date: Thu, 23 Mar 2023 18:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679596205
