Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEC47F3
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 07:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78CBC433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 07:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680594425;
	bh=ZN40B0GVQliHgEs43rRzlQ+wlUAitiypKlMfoCKqYlA=;
	h=To:Subject:From:Date:From;
	b=aER/5nXqUjitSfqGFrnNNcTBTn6mosc6IrNd8BhQ3oa0rnaag7jWBWJwBJUnsuXf0
	 xnsa1JZa3ay5gS/fz+tiLCRXJXPh4VKM11A6NIaGAqB4mTQhkOBm/aP+BPcADx9XVo
	 E0ro38hnLen3iZdCMmpaIbJ/2Z23SROGy5uu76gz5Umb5hor31lgEQf0YV/Ve/82XR
	 OrjACVV30RlYCkfxfVX2gxfr+0z7WIP79Wg4F2d1dJxQy0D9XNJm4Y2VfGfwzh9cG3
	 hO4Kixcgb9zgTpxZ6emUMpVJJjhtwNcuG0T3ztJ4Ixo/Khm2yL46X3TYzpagIBqT9R
	 uPywdhylko6tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8FCFC7618D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 07:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168059442581.15388.6480225056338723056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190c24823583fa4472bf3909cc87e0e6d2f39818b640c2da50f72916db561828
Date: Tue, 04 Apr 2023 07:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680594425
