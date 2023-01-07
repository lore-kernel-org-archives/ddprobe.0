Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C2B10FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 890ACC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673060487;
	bh=67LfM8Vr3++U4qDbSx42WuXPbMc2a5JWmyvky89hBwM=;
	h=To:Subject:From:Date:From;
	b=XUbzFAtnNEm1IpM2rV9F2zKj2VansGVK2zEZYcB1DgzEt9SbGAnX+4XYZXPvrziMX
	 P0pWs/WNNCkDp0vZskDH/zZdqCjD+6Lf9vC6uZTzsj8Qi7S3XHzkqqlw4GLtVQg8Xm
	 SuA3722Af5egx7OTcBM0Lkth2waUVe48oSOu8hqgZW5orpbVn50pY8TaMU45+xOl17
	 mqpCB7QvRuG5ZXWwDKuS8YYd4+s4sFvK9cBC/mA76YEu4h6CCkm+FzuejV/sVXK3Bo
	 DFSO66rjSh32Zk9Is0xcDleakYi3UcdzoJ3wU6TmRHwhV9zp8dKCX/F7kQ+hb1VEr4
	 7HdMgJb9z/HeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E2DC5479D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167306048738.18609.194150425096088696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735b596cd4c8049454a217dbcc28299d8b8e96a2e07ba38bfb7267017a3943d3
Date: Sat, 07 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673060487
