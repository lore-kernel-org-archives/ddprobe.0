Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5D41E528
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBrWs4iO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87F06C433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699538896;
	bh=Q97kPXafE7IqX+o62t3uluEIjI0Y3+aQJkQleWntsOQ=;
	h=To:Subject:From:Date:From;
	b=BBrWs4iOU0JH4EIIurBcxZuLOXvdQ1DiA7Tk7fA1HZuEZwWnMkfKNzrV7b08ZopG2
	 iBSf0GSB1Ako/rpdJ1W3KuVxjk83In2/1tW6QytzIdqT3Yhnhfo4+x3eNZcIvS5Kzs
	 Sd8NcX1AQfwsHOuNiy20lNRbFg3HTv48je5f8R1kGPBwrcUvLAgu9x0Jrphk2MAZCq
	 jfhwnTtVu3oKBnZvR1UsPPbifACYu8oxYo+IBpjz7Ey9mbkDnX/8XTsYCNDO5F5y0l
	 75Cgl0X16tVx0dTIfj+nGYwfl3XwluR3YDWecQtDEbiSy6X+0uSUQ9jKks/NsQRzQU
	 AjWzpyFMqTWHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A28BC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169953889642.32098.12090253842058583949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3348c91845d659fb516957ad93c96b5d96084eb00350be6f41abea4e104991b
Date: Thu, 09 Nov 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699538896
