Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C308A2908
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73FE6C433D7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667876454;
	bh=fGZz/ej1zex+65T/ROqW0TL5ptqMIfm6Q9mnHTGiTIg=;
	h=To:Subject:From:Date:From;
	b=eT1rl5w8hawRm56wjquKRrl3zuOg4ZI4nZZ3xKZkGtr969QUoBiKssHH4Jm5saY6r
	 EyxQlNFrZpgVyU3d+9BvvE7ZeKuAQ2YsoM7fSpMxUSTRk3vicR3wijcWmTEvDeADVJ
	 CLyj7fsCT2TdZ4w+debP6Se9L4HK5yt/1c3vQui6fSf0QFoCvyhYdOJonM5ocvuvKB
	 Ja2GFq9uWttmb8A0nWFXu69tXl6Xhe5gDRD7nj61leH9FlGSsm3RI3QYY+zzZBYHSN
	 rJwWwmpXTl5S5VvslikFhgR4Tihxnqo6CqysSEd4zEr0FWkxMy7LmxfaC0DVv3t0Hk
	 /BxsBt9rnmDng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549D2C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166787645433.32469.4847213580917089261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6fc2189cc8494fa3492089573a2f81855e7a0c448c77baa669466cc55b53c53
Date: Tue, 08 Nov 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667876454
