Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A647E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8B6C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672390287;
	bh=ON3Oq2pY1cJg+KpBnSfn1kW76HmXiWwr4z4q/K2wxgg=;
	h=To:Subject:From:Date:From;
	b=IPPikhI/eD3DyAr/PKgR/J0IYzHogOQ/ox3y4KqhnGIKkRkKGXNGZ21W/2RMvsi9h
	 TLLNNVmlRYVX5A3Aak/sw2m1oaAVgbM9b5HNYLi6pZpsApfEKDJ3NuETp/jFsDxJ5Q
	 vkLUXeB5uZKtm8m+NiW1v1Yc8zOYbI5LePe+jn3LwpjP1ftF/RDRQjRe6xJKCUUQ96
	 q29sl1eAgI2K9S4aFUeWeJAtto4lB8girCmGpp3c5FZw4svEBFq5LXe9LJUXru0X36
	 AfGml1NJ1f+unPK3Uyo3iJEyo3O8zkIz5WD/EtmF9WhXEhT5ZCRRxw1tVe5uAUdxb6
	 sM8G0vj3ya8Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 633EEC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167239028739.6516.12668968481287962614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93bf06528a91df43c15d6267ef2ccbb47e04a75b0e1d82609a7f018d50ff29a3
Date: Fri, 30 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672390287
