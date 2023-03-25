Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D38379
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 00:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED01DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 00:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679705466;
	bh=Xq2zEGkjeDzbsDVAekaGYP+8t2aheHcx9rcdA+jz8WM=;
	h=To:Subject:From:Date:From;
	b=a6zyR51Phd7vxMTsLKC8zvyKOjrW0m96xTYa5UWKhge31qCnvh3h2hkwnrIgZ/cN8
	 udsqFqjcYAnN+tBdI+bAiYn2zTwzFpsU7itDaflOlN4niNAdAFAfR6j5yqzGwuWRiw
	 29HbDTO3NzR6vEGXnyXScuLf7JuQkHDnUQGR5nV7vGbUacm0PkpWdrY4CmTaTldeYK
	 6NcQ8fhPG4MhJ3TMcOtYyytWqrO5cKdZKWm/2JFu55HOtws+VRI/y36Dvk5xbC3Lp4
	 nUYOi4owEexgnKvTA6oCOVf6S1eASPfw75/bAgazg2ZCJ9QX9TVeZd9joCJbZm4ttL
	 /3lYwmRRoMVKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4C9C76195
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 00:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167970546576.21324.15392287218707501503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3375c27cb178a124e8d03d14c4d6c90b3c12362042246ab635c1aced70ae2e50
Date: Sat, 25 Mar 2023 00:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679705465
