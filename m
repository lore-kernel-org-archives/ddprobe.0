Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE3417CD
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B0CFC433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674131487;
	bh=lq/5pfM2NGFwv4SJkbJBe7GGaJGooixY2v/9KqBwcJs=;
	h=To:Subject:From:Date:From;
	b=qYOSCSL8yh6xCzBWKzEEtwiR7PHteElKu5aJQfAMuZHVdE6C5xHwY2efxULYj/eva
	 4kprguUUI9ntFUUCPHjdyqIYKjZ/2EnL+fzUJw7Ru2pSlEqouiYwSRTP6nsYZhoVpz
	 g7KsajVFvPkuQEhup1Uxbh8F1B5YlVQ/ZXbuJn/8amRf4d73wK9se4ymOIk0bFfRsV
	 pic3cgCMjYYBCB4VlxfUfQS0BzTlDugKCZ+VDKJU/PwFfBjtz50eOYMzA1yxyxDVP3
	 Zw37A3j/+tIvFst1v8zSzoUTO7OLEVGuDxgRwiOrgqYHEWBTmQhCXh6z+AWMHLPypp
	 EMUjI4cONRvYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646DCC00A5A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167413148740.8304.8662736520800746963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a13670195c980aa85ded7860863eacf0714e163981f79f30b8faebb71441bf
Date: Thu, 19 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674131487
