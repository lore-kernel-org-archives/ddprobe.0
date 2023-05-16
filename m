Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8E3290EA
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 21:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29C3C4339B
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 21:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684270985;
	bh=i7qXF3XzOzFRub8/tsHTvPf5kNn5HzqhYUytua3kAMU=;
	h=To:Subject:From:Date:From;
	b=SLbB2s6MVAuUJswZ7KSANfE2ZJ7C8XvBnHvDd5q2HRGNd0YaKE6xWyo/L6+NoSBQt
	 GRbrpuMS6Phh6tl7kZUDI6kDGk+e86iEYF5I1jiP9rFs2ZZA3ime7blon0M8e50LFr
	 asscriHe+GJGpg2wTYvWmTVGEf273g3J49QtqH2qeRbJFfeQzb8a+kZt0LaKuD/kg9
	 H3DdncNOhSmr8tWOsTigiFBCZVFM/Z684mLi4UDSk/DSn4KCjTsrnGIjKm6FWM9OZw
	 k0klmSpn0MFVoMHZb+gv1yBlso+v6cv4mi+bGtQIJgKhEi1hxhPNM908xSqwUH9xur
	 tn2oTweptkMMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C850CC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 21:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168427098580.24975.17204307747836229505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89154dc893aff12f01e784065b5b9605a03b0b173a69a1eec8d4c8a056e7609b
Date: Tue, 16 May 2023 21:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684270985
