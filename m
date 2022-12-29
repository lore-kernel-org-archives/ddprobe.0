Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF221110
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88CC5C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672341087;
	bh=4Djc+IUA5HgNvOQfBYzRXYjvZa3BoXpB6+qtCyBMHpQ=;
	h=To:Subject:From:Date:From;
	b=bp/KPgKrw7HO63PO8eiQhF0ecSSaZv0vpyJ6cmi+gEzTkBvkzG99JW+nFxxBhxBGD
	 yJP4ecLYDatbzLPOIikme9qUVYeuBdBkhI2/efWAYdCsbO6dApzE6tYDKoiQhL/pS8
	 AIXyua8VXupoX8OaZzYvroiFC0kHE5j+mKL/BtSvJ2F4dfxoqYiCa3++4bEHPisIgS
	 KZRNspkhj2gbjWFAP1jzy2pxxNgjstAD8z3UX3AbyFtICJRvCPDm7ToyQwyJNnE6i5
	 OT/HGe+YsnrUXefuOtdPYQWk11amJj8bQG2KIY8E/ugMEPYtcBXj6dHJCktS3Jlyod
	 tgm9UmSqtwggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA94C3DA79
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167234108741.17325.8451436155280836320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694241513daed913cc77236ead168bb2553bbd890f29ca9d0e13b26df0736c31
Date: Thu, 29 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672341087
