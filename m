Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA192581
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 18:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8BEC433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 18:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689015428;
	bh=U6vdOJ7t7u3gJhDJz++G2jcxHNIbPS0eP+UvSqFkM/A=;
	h=To:Subject:From:Date:From;
	b=gV0Vkdm430QtOcW0IFXzy8sI9By5C2P6pwVrZpmZZY6bySvZQkLYejnBp9bIqXewD
	 r7ME3FVVsCfiEv9Pl+2IiMkBId5x9tZv0fSBgOQmW+hm3YG2Tm2RxOsXKzNTeowPWW
	 wDxzaSEIqFLbUafXiEVChoO9PiVkRkNFTOzzdON/95l/XmFW1rn5KamJx0eWWKnpEG
	 FZEevTC5JaNP9e9Rle7ZMPKgPe9RggHfJ0NtYakUlUuyfNMK5AheuXEe/y3eNrtEDM
	 +7Z5lKA4tDwaEEQGY98p+zCymJjZKaQA1By3s1ksL4yPdkUM7xtEo0gHkMirL2UL2D
	 BleZ9WNaUD0jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F49EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 18:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168901542867.11967.13520274808903472430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f90f366c7d4bfea17ed9c96cd3c81b383d40d041ae3b47e0871a7e14a82f76c
Date: Mon, 10 Jul 2023 18:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689015428
