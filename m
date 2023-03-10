Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E33363
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 00:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA587C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 00:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678406645;
	bh=z4ZcMjh2Wb/Zv+UyhYTfx9bunsqs4KTQrwPl9oJxywo=;
	h=To:Subject:From:Date:From;
	b=oiXptIUB8KyeXJxkpxFXy+K5bNC33IXeJFVZABSVd/UKfu7H+hLq1Fkw7mf/binrw
	 87deLL7jCp+Ks+Dx4gm17AGhRuAne8vmDR3OZO+lNVxQiWm3Udf54AHtBDP293bqVX
	 wnC+wIyp3cIFc57TExJZ9NpTfyNnLJRiOIPFxTd0UvzZ3VPZhp8rbb+UJUGJIGVdj1
	 Zi46LxdSmF4dm3PfG+cmHLJkan+flUHOSf2Ft/uqm+GxejVY1KzUUq3WjI19Urn1wJ
	 yram2cCaOE4sidgn60QzR7JICUR9u7RBOijp6NxP5rGoUchOw4aju75t1jns2NyMa4
	 3mbpUiE4WdF7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1E5C64EC4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 00:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167840664577.31824.7611343115808249757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1cca8878777934ba5b3ef33c0d5544646b6400f80ec3350db8029477b51ff3
Date: Fri, 10 Mar 2023 00:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678406645
