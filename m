Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE9D184
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F22C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670199654;
	bh=5Or+TVgbVo9VEF8A3w1tXAumrIJFtJ4xcc7qOejbOIY=;
	h=To:Subject:From:Date:From;
	b=oXK2FGsmCei9Sy8eRuTFEMPHWHdzRN+ko3pQzQk8ng80TNv2hbCDpEIyZnYYIW9ZS
	 CW9Gc1CM+5B9L89IJX/3eFZJ5DPCbP2cZHHNhgRO5dOiNSXaww7zRQ89R5raJ4J60i
	 Me3oBXYil98wC0ag9e2llzNLWMiQQWxEaH9yXm/8N7XS6BqqcPTj803USv5ueimLTO
	 6X2jIsOG9TqsCCYMaRJtwF+EZ7fwiwmpLn7nhvkdBWjcS7pm9+HaBIeQbLmf20Mfcb
	 mXFbO9VJ0BKW59I16hobATaZm+S4M5KUuQDVBx7OumfS+rA3DgaciSFBuFrkaOH+/Z
	 p4usXMgDleWjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFE3C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167019965433.11399.7658751022642857657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ace3c1c4b945286efe81551b33bc75e5ecfe26ad70bd23b8d2d900d769f5320
Date: Mon, 05 Dec 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670199654
