Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6499A2578
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 16:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09853C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 16:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681662426;
	bh=m8R+EdoUvLA3XHeX54ot7PlLbwMbnWl6rbFM/PsQNH0=;
	h=To:Subject:From:Date:From;
	b=SiW04kV9cSvEz/VAfuuVYRv1uyqTAOiD8fW1R2VVBLgw/Ou7LjDFLJnyZcfRzDxnv
	 WgjEhD3sUKoiOydJtlFbSLjdtwvTW6aW836/M3Sy3LzbHcJpcwoaJP2qCjHvgu7bsv
	 +PlvhZJIbTzLXqIh7EhPDgJIC01e3vqvjHe1jtLK8B70mdT2ylPO5UI5OaHo7xsQWo
	 CVM5ZHet2hpG4ji7zRKV6JSjh78N8VIPqLma0irPGZnge8ZipXP5McSZTEE3uxp+D8
	 wrKR5V1pjM5eaFKZBAVw9P/yk2vsxXYkDxvpiN17ZZlzgc8mTjAVK0vj7d5qTqTrDp
	 pkZcrzEeYjqAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7ABAC77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 16:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168166242579.14406.15032843697116593423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad81e8f5c641116ed20facc5c575c24d76731e3d191b913e9dbb7a51d984655e
Date: Sun, 16 Apr 2023 16:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681662425
