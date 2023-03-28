Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735A82F2A
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 20:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1CFD9C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 20:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680036186;
	bh=xdL94hCXmp0w8uS7QWbkTw55NFAsP+0OCAM89QUyeLk=;
	h=To:Subject:From:Date:From;
	b=PMFKM2jF/PYayE9HZP7aB79z5NopvbZfLzJ10R4RqEGkjfREtNjw4P+tIJ8qzubHI
	 tN+Km6pjdadfAsd/Z+mN4IEPGCR+goieIZS8kIoan8AzLp+V8iogU+rBN/8AsyInCO
	 WPY/SSO/PuXBQF+YXyOLJViVi5S81ydetResKj1OWSGIam8tEZa8Cki9ehUYzB4X5D
	 3QwRe8sAo/6b7XJc9zEdLFCgzUiHdHmqYDLwOzkfEk9G+kzdJqn9WOLmTN2lV3IYvQ
	 FtdgeLEFLU0S0FcXUQ+pGDVoBMgmX5YQQrQKl+7fVEzVHQPuxWxTnnuqKOYnljiL1a
	 57znTaYphJX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1E8DC76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 20:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168003618585.7960.16968163406852442973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85154312d0dbcc92b15e6ded3242698edb3fae72b086b1af5b7b7097089dd8c3
Date: Tue, 28 Mar 2023 20:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680036185
