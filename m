Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ADC5380
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D51C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687896788;
	bh=khuFcsLBIrXu/el5A8qjVPtWToz3VTKSxs+SHEsgBgI=;
	h=To:Subject:From:Date:From;
	b=J5kWe4nNAc486vkNIxbs4TON7HGmNOKtJbRQ1wTdpgHbbb7SuYHsSU34wHqRQcQvk
	 l3A/qpbWS7K5FZoiLXXGX53uhFuBu8Gvug8KNZS2pxT27WP+arZyyYPKYwXB2xi7LM
	 T6zrGlUofFsIna7hn6PAIxiIQyTsmxlNuCeT1A4Wo5q0IlxEJZC/L+PNejQkGjnc+W
	 bG9q8JwW4pPRwuhZ50aj8vajtxyJPVJnVkKksL1d9mYrMIljL8U/7EG+/lcRruOmBm
	 SSaQbSl/nKQTKTt3rH7njjsV0QU+lB+w8JjiAr8MGXx79B0vNQPDzo1WbkYeDpQBtg
	 UyWiPeCM5hsGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6712EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168789678878.6685.5469136774341947748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89aad8792012d32a7a3e291788df64d54f3c79e6ab8342a1ff2b7fb5a5cc0a8d
Date: Tue, 27 Jun 2023 20:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687896788
