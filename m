Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B338362
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 01:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DC4C433A0
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 01:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684459085;
	bh=azGKIjk51s1cnB3pmwuTr6A9hMqcmS8AgnTYr7chRps=;
	h=To:Subject:From:Date:From;
	b=d/i7IOK5vYAXwBGseVqiyKggsjweZE8XdrK9/wZI+78Lb+c+yIuAGOD6D6Mn7tNY5
	 gX9XuKT+JnlaeBeTBlimqrNi7yqmXVUAw8pGonMTemy07qDsJzHx3MTt1z/2yo3yIc
	 ZbF6RuW7TVpzqGqs++8OIzJ0K3pgQavw3a8bAoBwCez03Vygam+e76I0aYfZtXKdxm
	 4yRXANPApsxfZX31djCbPIq0yuRDJTlJclCmQ0TrvRe0M06usivzPxkm2547fAjupH
	 +x8PQN5QesuAh4Z2fbq8bJ/ckH6IYE5bS9FEhxL6uyj1BVs7jdUB3AmObgAwHPZCCe
	 wiqNlvBHFpxSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C196CC77B73
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 01:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168445908574.5889.2970755611257477291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32979b34376306904166391a69e7e3b548bd838ab17fe406bcc3a88ce1bd1be6
Date: Fri, 19 May 2023 01:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684459085
