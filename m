Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C692B7E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706A2C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669215054;
	bh=mfHGopaoaNo8WWFUEROV6fMsJfBJZLptSun+B8KxVx4=;
	h=To:Subject:From:Date:From;
	b=kSd0jMpEwy7Cyw7SVc70baXSLkngci8CZbp1NvXOUJXDu3vw9EgNpQtjNvUp+GrXO
	 POlC5CupCC5bbDe3zq+cDqFJBztYpQPbSQ5YnNk3o46n61afn1L5zB3dOCm6Eozs+j
	 QaClXVi1fl0PjVlimhY99ntDqc6S0+nerQ3n4y1D4mdoNlP4fggA66YhKvSrM/6rJc
	 HQ6p0jNAl7t3iCc3J6dLqhvdsO+FtX+kmgKvP8VRRyko4NWaKetgTWM++Jv5BIZ59D
	 5BzyGNGFCVgb19ZQROVYXWtNwHMDTTsmTWUbN96qgrZ0KGVnLJxczrb0P0weEb+0mK
	 eGxaPB3q5SVDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 507E0C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166921505432.21622.9039724829639737996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab8cd5a8cd82d7ebf571d4970cff50272a5510ba8016f5cfd5da21d4d03b3af
Date: Wed, 23 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669215054
