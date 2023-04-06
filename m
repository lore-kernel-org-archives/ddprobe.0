Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56499A29
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 06:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F18F1C433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 06:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680761826;
	bh=rYntnzJnzciI9FdWE4vgsy1itIRfAnyd5AUafqP0WZc=;
	h=To:Subject:From:Date:From;
	b=SbZIIfq7YJWfSf/t9iXZfbV9NvUogHzpn04TMuAWI5++ZtBWA5YKjhRaAS0nV8FMz
	 2KN3/3RKRI79EMVTZEAoKoEqf+MwuKYcMDhuEmb4Cb/+IkpQO5KwcdJtISKN035hnT
	 891M09aoK5WPwoU37GoJYcU7DsnB9KxGTHHDZ98Zyk9oLtRxQPTobVmW1FzScPFjuN
	 6AyTlnFEpVjsME1LKESzqQ0uXvYClA1qAbyTOf+HS2dejB0yzLTGVU25oiWWp6HEU6
	 REAvuTNA/S8k4ZtJb++Jh3YUv3xxZklAvTjqR9lAjcaZSpvCTDshj+o+lxsLXOpaqH
	 kprL9PXGYnVMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D15C77B6C
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 06:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168076182584.27351.2818020579776154216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c915dc235751003caaeb6f4b97f7a9199dc65dd00081b84cf353a67f1ab8b2
Date: Thu, 06 Apr 2023 06:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680761825
