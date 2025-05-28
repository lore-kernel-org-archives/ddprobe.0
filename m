Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342A0284B42
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748434794; cv=none; b=MhZKAb5RaXOwc8fLBGRgkoVXB9PPxbDqUzw/tqf0QWFHwJEtFGDJHQ2fZXPrZBLn4Ya6lZuhYlo3C5jVAKKSTnglrF0qp5iL4eClaovU/05peiMr7lxAUpKZK3/blLZphLrj4CLisDBAll67UBRjlDuR6oYn1xTZRgTke+erDgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748434794; c=relaxed/simple;
	bh=vktZU6qvIuXLBybNI5VvRYS9CawfYVFvrsCtSqZoehg=;
	h=To:Subject:From:Message-Id:Date; b=SllQrTpmP24i+EFJM2DMTr3vSe9tspiy4lcE+LeRI0RVrCc+NIMnU3XI7dxhQvMrK6BeVWkUe5/U3W48AiicOMIv/76WynHp/xlYvgng/tz5VfviOlIRho8LzKlFAF4gYV55+SkbfoALfljgvHlkJNzUom+yV7Go8qxkKdYtBiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3tGj9nR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3tGj9nR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12ADC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748434793;
	bh=vktZU6qvIuXLBybNI5VvRYS9CawfYVFvrsCtSqZoehg=;
	h=To:Subject:From:Date:From;
	b=V3tGj9nRMysSDWl2vZIxtHjOmWDrQtuaKnmSzoFQ+gAkPHC648v04rQBAqb0E9FiR
	 rx0SaufEKwLZs58D36czH/R2ud8NF1FRlbgV6zfv4OABFXx6Fx0vQARIwYkfn+i8U1
	 F2z5d43FiL1Hwz9/k7obh3DS34NILCXVZnJqM61BAedoHvtN3Wf6ODyiTQrB6a9bMr
	 iCj109S6Tkvhk2tVWeZrX6HlRoIRuISTj62BQ/1//tzT4BWM/VbCPCCZOiZKRXA0I8
	 NeyqCvj1Rahpg0PYCfxSqP7PSRV0t5ur0vTCkEVRpCbPaerdDjBFgf9+nwpmBYREWN
	 rBYDpFwI9wSvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4ABC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843479357.12255.10023685492236674033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5368fd865d3a28834340090480d43de38a62d68d3f71974ae4bd4dbd8c8c7cb
Date: Wed, 28 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748434793
