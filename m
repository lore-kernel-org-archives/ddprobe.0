Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4E37486
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8BFC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670016654;
	bh=Hjk9JqdiV0LfTaGnb8nC8hM6WxVwpOpVr0oLQCD1ZiY=;
	h=To:Subject:From:Date:From;
	b=n1SLHIJ+DsE7r3AHC/GwUIzPhWJyyClAnsfnP4y7K3X8SuyJnrkCZB4Fbg3MDY4uw
	 qnoqJukaCsowl/qUjBSfndR0RNR23prQ+fN8zIpCAcjSsG7svKbRNFlfaXfSazlz8c
	 LXZS9vSU8P864IKM6lEECETCfw3WLNWQ3roPj9bzwiTPsZHF1EX93I1rP+lNpTxtfo
	 CqB8HEqIwa+stRL3POKyTvYJOKkDkpGPQpR2V4gnlN7MS06fEYyB3oyl9pShbhT4xO
	 y+AFvljWgyloHMPL7OrEvD8/V38JswXRRnH9A8OlChxqTqwp7eHptKTwM67e99HYfU
	 7UXxIsVJnV0dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A64C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001665432.10425.5612477318753983935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2203f430433d27c0814b0f048259347f5ef9e192ce8242d4f8025b5527ccc0
Date: Fri, 02 Dec 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670016654
