Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A9717F1
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruxnAzLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F807C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701740896;
	bh=M1GBVFMgNudIZwHqRSQwPizJrnxi8pbcfCIPKEz1aXY=;
	h=To:Subject:From:Date:From;
	b=ruxnAzLFpedJWL4MzD1sW65HFJB0eUiJG3mm9jQpcGlCCm9pUvLNHWjeX/heXSeAI
	 d9ZZQ646xdNI6RYqeiJ4lvMZevRcY/K8UgkgGt1vpSsqUNAQpKHHBUjesP+KZ+caLV
	 t75aN0uJv44kPW2bpfAIKbnbmqJTVHGmyXFiX+udu4841PnnffqB5uuZIiVfLEPA1F
	 LU1qNy56QZ77CUPrcbAvPJ6eg/0BJ+SgQRrSCddrgsXne7iVWj340XTWGazlgPzzu9
	 IdjYHOoQXCDvhlPWeGArria2/+kW9U8bSYpSqYLdcDov0XcT7lfEpP69Pn+6rYQiDf
	 a6duVsa4HEynw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 631A1C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170174089639.15302.18079900136446429559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a084f1244e25ad5ba13e64b7b1f3366b1b62e6383abc51fd4f27b2062501416
Date: Tue, 05 Dec 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701740896
