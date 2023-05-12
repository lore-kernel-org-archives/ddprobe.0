Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3356CD50E
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78B8C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683934565;
	bh=SGNWJG6S7F9oJaUyWCcSwGCEzi6qz+lRdCMZ2miMruw=;
	h=To:Subject:From:Date:From;
	b=BmNdzEpqnFg8KNxZEDT93LToOgpYRjVjg4itS3tunwHQ9ZAC9QlTV5N3p1UEQ+cYz
	 Z3cK/sv5O0ukm5zZcjfxMDahvqYUJUyWUtD3p5vNb4l7DWyWniUvdSKNixCWZIObdp
	 ngey04WJL4hmVW8KRCkoQ8jMcQQOC4i6ntq7DmpN+GLiuYYCr8peAJXxWoryt3GZcH
	 xWHK21YjWYoPbaFGAKCExr9FGrp/SAC1q4Lj1/KI1ZjxK8w7l/wQ+VkPzuHTjK+n1l
	 kc1TDEy1OwQbM7jRz8I3eVGV9Ecfc0sHG/U3UASIFrjAPAdHgjB/9Nv+kHSl/rVwGE
	 uUGMWhg8609Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC6CC77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168393456576.21441.2288057632740820473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b969b4dc66b3aa12b7068f7a455104b302e46b798eb701a35257ee9c2dd45be6
Date: Fri, 12 May 2023 23:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683934565
