Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE0518E
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D83C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661689852;
	bh=Pv7eTvM9jLaJmM9gmuCHBlkNPJXV+JUiZMgvJcNF418=;
	h=To:Subject:From:Date:From;
	b=rSxxju56Ocoi+pUapPFO8zWXt+G40N/rqUQrvHn0ehye1lyPRyRkptbJyMzE//WUu
	 iF4xFM8tK698YHcHcObVvraQMucGllb5LcyUeI8Nr5YKzck9PUqwlM3wCkh1U9uM0z
	 GkslRB7YWPuCnGggiEo4N6c3g3LBSSSAW/5pjICyZYG0Vk2M3F0jNbm42dWXkIOW8z
	 QPxIOtCbJtXhrKj1vfwyX2OgPLT98zxyjQN4TPpT9k9KbiMffR04NhOYPx11Cb6doB
	 RC1aQ5zrQo0hlAXQBJdpY3HlfkT3FN/C7gYVnTirIht8lHkbfeX3tSdagRGkTOc6uR
	 mzIJ4uiPHTvKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DFFECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168985232.22065.2515430575955261439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b960ba909723a11f0b2f56c55c9b096bd00db4fe969da290f9f0c4c0ca31be
Date: Sun, 28 Aug 2022 12:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661689852
