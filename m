Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94EA5C81
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707B9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663345253;
	bh=C6IeqTlEsxvwpVDdl7mr9x/KZP6xbPDgQf5c8RWNvsA=;
	h=To:Subject:From:Date:From;
	b=flKI4xE+DQ+VWT89c/e4xSjMxs1ZVuPB2NDMhK44CujN++MgtsU8mBevBkGVGiupT
	 OVY9cyxPOO+ijSutpuxiuF8k43cogo5A51BPiQMoMKUYV5A1fCJWOfsixtrt9tpN2+
	 9Hrw+7kUrkpBCTUm+syh2WG1/lES3kODI+E3VE2Bn2FkVct8kG2NCqUn7/fFin74ng
	 GEUspuRriiW9409jxT+CxGYZWPls94r5LgT3xzcdeE7TcCC4VXaXLrofruarjGD0Xl
	 9HGD6wt7H8peSczZEyJlyaFy6Sn8+g8PltzN0cVHgtaL+ib+/shoJ5t35XMk06QuXF
	 4XfXHjb/pVt/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567D3ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334525334.20507.12892371650925900305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c416ff09906be6b1db5aed85e72082939d1f294af44f7369bf0072ec1aa1e9c1
Date: Fri, 16 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663345253
