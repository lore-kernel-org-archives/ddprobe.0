Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F8A3E7174
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772647494; cv=none; b=Km9SqD6wywubgmrJwfNvUCVkXavktg3nFnkS+FlqlBU+rR1w+rL7ozFUxlejt1T80U3r5Xf1fQSKRZ2zdS2Yx1sRiycwoCm9pWsTbjUGKBQj56ubWeXbJjj5TAgpFGoMtJA12SId/l8Jm0xuW62NvPbSs30HaBVElTNTukzN/Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772647494; c=relaxed/simple;
	bh=wuvlNe8kOB2StE1DTMjDldzrBP3WQfdW6XgoLLc6HRo=;
	h=To:Subject:From:Message-Id:Date; b=k8I51ys2zl5A4C/rWqmGy0ySQTN0OaEN0+ICBzK40kYOu1AI2E1DfX0eqouhBqpEA/+/lAOcBt9kssDSmudS2bjrFE0m3pxW3RatwRrBd1/Ya8gL9B5T9Sq2BmNd+xDexoefgZHmSdcwFN5VVjMP1q2tidURlAPFDaG/ozzBPqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpbRXnAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpbRXnAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE0FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772647493;
	bh=wuvlNe8kOB2StE1DTMjDldzrBP3WQfdW6XgoLLc6HRo=;
	h=To:Subject:From:Date:From;
	b=jpbRXnApUmwoQfq1nw7XVkvHACa19TpHE9NEC2E7xSz/O3R/WipgkG1jsXm13QydQ
	 GDHSGSIw0/0/HQ9FyEgEkc+TGoWTZ+Gt6rDIYdoLjhr3XTGYVc6DgweOpoNH2GmsMu
	 3WVRKbzOv7qWNEoV2VHu4DF3LrGd0uRAKGNXcN77kaUBEsWjSF9FiReQgdtoo+Ltc4
	 6RFE5Xsc/P17vV4oEn9Lob2Tk4xZIKpfxxPnaCoShgPbW05JRw+jdcvzG5egN4ZTSJ
	 t9dZ9rRbNC4K1/hpFS6zkX67mr8SYDPNsPNTfK5aWVBheab/SXmT6HE3FZ9V+AUslS
	 D9nlq4SJHVB/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD3EFCE2A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264749359.23993.18144850924526818074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a1adab62308eb6f50d7daa44e6dee795a0f263091ffe3d8d3065109f4d94a9
Date: Wed, 04 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772647493
