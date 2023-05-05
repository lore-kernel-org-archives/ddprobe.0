Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334F6156C6
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 11:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87B3C4339E
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 11:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683285425;
	bh=31wLR5fKYZ8pMQjmgIKDBh0tE/kRbHBpe4D8ZWtTCo0=;
	h=To:Subject:From:Date:From;
	b=d3c8SdCUr5dZxWrtLofY8Ysw43pfaEAAtsPvNHY0ysx/bDVduovebMuSQ/Z1WtkkG
	 wMwBTKEo/eURMXikCuXGj7CTucD+ds+IOUHJzbd+y2WQVPhUbVtyoIF/eDiBJlKugm
	 xg7waFuL/4scV+etkXqX7KzM2XayvCtsobaN3oF4opnvb807DXmEJQRBB4KMvNSn3C
	 nXUcpcZ7ZFNgGqzSyn2bC+rirJelydyoL4OxlRiSjrEVrJkxtW/aLaeES9Xpgx7FdQ
	 1G4Gq6uogupDNSohoQELimSQVbwmB3IuNCLSlf4xZrfWOBG/vEvVUYnWXdIYg/cKOo
	 AFq8niTBdsdWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB16FC77B75
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 11:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168328542575.3479.3530108550194195130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c94bd3d0259ecd49be6521e2363b7ed21b708d1fd90fc0d1633ad3dd61adb6
Date: Fri, 05 May 2023 11:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683285425
