Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE95629
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 11:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6286C433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 11:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676807285;
	bh=oVtBDv+6lxAvPrA0AgvU7UJAj+NiMXsxPEvvMGXTHjk=;
	h=To:Subject:From:Date:From;
	b=M5HTyrh9XtDLhQuR83qfr+dpGUywz/lf12sjtOrSei6/nhRbWXBzxCd1BjIM/WE2J
	 FbQGkEcDqikP+OdPnSkc9A55M/MMBtkHK60oJtfAp2XR3XD37XAb55ydc/CORPaLRB
	 xjiCioi3GxYk3f8dWlS6pdvMz2+uHtgDHrpXbJlHhOZqWvtyiep9d2y5uQW0Mw7/r2
	 GgR0XHrKpivFr91qKP43QwyAvQ2oKue1y/uJux6qVT+DU3RMUV9/dcR3JKv2bFr0rO
	 o+BNuNHJ0W8CIPdaHmHNV9XmdQJ2KpYeQSucxK3i9yJta21TKHTbKA3CxVOTYzPxj7
	 fBk0fstZyzxnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9608C05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 11:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167680728581.31915.3875722135995665183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e947fac7e000fe5b64d1fb262f41998bdb2d2379a8aa7c2ddbeee1e15c45d2
Date: Sun, 19 Feb 2023 11:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676807285
