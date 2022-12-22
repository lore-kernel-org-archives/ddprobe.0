Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC5E2F2C
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCE7C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671741087;
	bh=PDox0zZOg1INMl+ajmmcXMV7QlFyqq90EP1UIQx4cmc=;
	h=To:Subject:From:Date:From;
	b=CgE+zYGCsq/ZhE3t23r56nozTzUEUllRLG1RJwloaswssvg3BPIsPb54Tprb2WKp5
	 SLEVgyqwXHL1xEZp/uVfIn+1zdFsdWi4AMfIao5ERgZppIFPydzvqMQF0OgjvgZeK0
	 Tn3393QskpuxSX0MXPhieR8Bl7Wn55Jjpey9NhcGat+fUrdLPjBUX7azHgERhYCpcm
	 WWrV4jEbHd6Ht3WILjwFr2Y1Vt/wYSGKLzUR/RBP2XkFoD8nt7vnjrj0GBgpRLXgVM
	 5q0w70PPAJIrbyxAi5GUMKb3hvpDsdMcG2Skct6MNUKt6PBCoCzihV6PJPB3uAcCP3
	 MXRiEvVlIXo1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED6BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174108738.27217.11760037197489073810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d2a9be853f04ef9a4f6fabd76d9583977fe4a4cd16b8b6fc9d8da0f2fb6bac
Date: Thu, 22 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671741087
