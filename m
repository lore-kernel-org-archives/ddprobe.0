Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C311110EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74654C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671443487;
	bh=nKu1tf/awbp4X8IofDgMdT7O8Ufve6DQdnhY4gRvJd4=;
	h=To:Subject:From:Date:From;
	b=M7fmPEVAKOIpb0AAEiTzG/rsQhfqrwIC+IiTuJoYZ1koHkYQHCIh8ATF8MeCsV1+0
	 vbhSiUuOV4uvEWtjpGkGkhiynG70uxnY1GTggbpCdDoO8pLGel5lGIpy5Wmjt+TgDG
	 6Qu3dKHQI5QHcb8UaaEDlicC+pj50ibRIWZxbEooIKDyOMVwsa7FqLbYSxKN/d/HVA
	 0aMCyn4E0Criukq4dwZGzUUEfsMcaT1zd8zZ8mE9PpBhVQnjaXsasVdG+wydhspk63
	 SCnq00mnXHaMkSFyyBHt4i2otoXkrHwmsXFpqxXskN6A+dy2mx1XwCUNJgKdLFcZIw
	 0N+mo3BlqkXJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8E4C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167144348737.31399.15363784786260916989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7949d99aa59da567d7dcfc989fbdcdac275a54f1b5c3ad8b1ee484681055730f
Date: Mon, 19 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671443487
