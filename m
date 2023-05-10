Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678EE20B30
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 192D1C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683715866;
	bh=RDeBiF6JFxNvPzMexGb+ev+fYlWMxDlhiDadAQ/fEHk=;
	h=To:Subject:From:Date:From;
	b=RLuOk2OhXFeOboQzaH7VPpD0sEdDOBVKF0r6liuQpw9p9xI9opaQvmEJYgUnxIpAV
	 /g72VzxA1EWhMCpl2FUWMWkYicQgwoug8uIBRf6x4Bp3qwC2N2ULlTvtVpfzv2xuHw
	 OyMO+aGiVSrLW68nKbnd8Nu+FtJ9CP02lqBGCa1E8wAxPTiH6BF8mkYG+d4O+/l6ii
	 6xlgzxCSlyqhm1PF9xFf6cQGLQbb5YzRAd4KwhSTQPzOHg9pgJ/hS0NDWyBejytvSo
	 Au/Jf3Ql6YJpYWHgREvJ3vCoN2HE07VWMeZ5KcKXnVZTzDXQnvghLPk3tWgLaB9bAD
	 +aHlDYMirx3NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5C42C77B7D
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168371586585.16275.2738773609790646242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88a1bbd6b3d21d00ea47dfb9bc6b033321dd38705ee8a9e77bb096d600ad6db
Date: Wed, 10 May 2023 10:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683715865
