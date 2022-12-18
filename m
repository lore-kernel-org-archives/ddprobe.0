Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C52367
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8192BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671339087;
	bh=RqE+r8cNMdCEDGW008g7wJ2rG3ezwt9vg550P+Vyl1M=;
	h=To:Subject:From:Date:From;
	b=HX+Gic8jFh9UA7wWmkQstOruUANkkDl/NzDXutXT/zI5gfbH2AlkQxPPuoRnhulOM
	 LPwmUYPL+DEUp4vAWM9X+2DcDsgZjw9IOWNFUonGuFZPy/cVFIJeqxBcxgvz3qFgvS
	 IoxYGJloPWIuhhLUprEUw1rWOw+YvwKlHPZ+ytKa9TN/btdVATLFaWyt7MwIKKZJ8M
	 KTHfvSzg4ICtCqQZeH5qa8oxXK/rXONmIP2e6ZmN3uimuSKQ8tWwHTz5guc+LVk5es
	 wKgYIi7YarbStSloeumZzntbjqZCOvajWV9JaYGrsO6XOCtGuCux/9h5g856GKI+jg
	 l3TnOlbDbvtnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6178AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167133908739.7916.15458644378504709054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba985d61feb37ea7f9591b80e7937a77f3a2bdfbe271dae77fa0a524dfecaf83
Date: Sun, 18 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671339087
