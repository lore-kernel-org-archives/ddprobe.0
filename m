Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E475185F
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 07:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1DC1C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 07:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678604766;
	bh=WGWAa4rHjjbPStcrvMvAoixTvvauIs+A15ig2RueaoU=;
	h=To:Subject:From:Date:From;
	b=Vam8aTOu3ks2INgcNlucxu26hCd5Zmc6MThrbvE/HF14D/7W7/WFWCK6kOu8kJGAQ
	 jshFNm2XHiQYu2vyfk38H3iEC9w0j0bMFbVRbRGDBuh5rzpV6wOpQI38Qti7PPz7sR
	 2JvpHtonrTTWgG0k7x2acEc8z35vm1auvMJcn2e75dRSr23zP+Tnrm1nasIxgBsbET
	 hzgtwot3Dj2mJsV1yFs534RtG/ow8gwU2cLY5m/+wHr82d60NWCxmGjyegJvCBm3us
	 crVeQLFHOuNe9Dqg4KHmIDKtQnvkLGNFoyf5jPpSqVqN08XpuXlJs09UmwfwZ//pZR
	 l1UI13Y7rHquQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4CD9C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 07:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167860476580.30332.13613256951212392629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d963bd253491c6620c013d14c3e506c2c5879cae4fa75c9604c46eb6d79b29
Date: Sun, 12 Mar 2023 07:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678604765
