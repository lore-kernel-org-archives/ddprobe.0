Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29AE5A7C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B33C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664556053;
	bh=biDCmEBM4AFKfcztG/OhkiCQEGiapH3zW3FUJC7PVyc=;
	h=To:Subject:From:Date:From;
	b=FsNYERozSX1csAKSy4DNppOuPGNuxVB7m7T4ankJM/zHOMdCGAVjPTkXWBTZmrL5u
	 +HbitmZiPdD4nt3Ck5DxavcQHsDDQwSD3l/4KgjSfGnEJRXRDnuwFkoOSUsnaVXH/a
	 aGLUk7ophsTZZjPv11g93vszefVqH8/TMuE5Fe//0x67EnSNePjPHSliadrBDkYKyr
	 +H+zV9XSzfcRPDmuS+gmYwhcw7FzaTyDHuRNMAY1xqK6u/V6RMlqX5CBmzkiJrnoRx
	 xJs2hLGL/RJdjsJre11DWG4+Ed04rBzM37F4Iz5nCBX5uwKEnOxj6IY3A5AxLpL0Cc
	 NAk4fvC/YdaWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53355C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455605333.14169.6572395819510486227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d5e5ecb7f249cc12caa84f6836cc6d35092ce4c05320ee6d69563a41c9cca6
Date: Fri, 30 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664556053
