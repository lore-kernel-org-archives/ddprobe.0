Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2139437D11
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MljRJThD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779EAC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701948496;
	bh=lCZsNCoDG3oQ091yUdoTDA21h/sFmlT0KSCrqQKz7bg=;
	h=To:Subject:From:Date:From;
	b=MljRJThDGSEIeJE3mQi1FGILDUIrxAaFO6u8ocy/A14tUUqoIH9Zj966QcryV9iir
	 6Droy8uB9j99bRNn2dVoEL/vNdSUx0j4Oy+/y/qQPHExiPdlV3ABRiCSLhVLgoS839
	 fcNrdgm3NgaNWcjzK7tyuAbCK6gRg+uRyVIdGRKWUtX7ioJVKnnu/wdScT+GCoWjZb
	 VVTAEpfOyx7AdAdHoAtCdLz3jvMP3LHK/KSeS2RuXoJVmnlBxGdNsoe3VfQib1GYm3
	 qD86pUzy/FrgPhmW9Y89qfo+xloLrkNP+MP+cWNGUDlulSBLfshwODjIWFQ8+XCPOL
	 qLXPVkoEQI7Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA0DC4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170194849637.20473.14368298639107840847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc1dc95961aa90282788d109124e90a17f697205ed7f2c7180d33d56aad4754
Date: Thu, 07 Dec 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701948496
