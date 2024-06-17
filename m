Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C1B181317
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718605703; cv=none; b=QCkPtO6N5RaPBC0yna+I8Mw7pZrQYE0QDjAbmRHAni01NW9f8s0j8ZH3IeaYkOWIKkzCDWb8OFuOLoy/UUc7fPup5GpZ97jPtN3372g84mCCPj+dfdAaTgvJdPaAr/UhKtOQNMk+nk0yxroChKeIz9NPjZamqkm++ogcE3wNnrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718605703; c=relaxed/simple;
	bh=PQJlMOJwsiQyJ2qzxfYaf/i/RrJs7C7JHYkVSbwsJiE=;
	h=To:Subject:From:Message-Id:Date; b=Akkgh8jPS3QmbHYedWk6yuLkS3kP+eF7AKVywQPwXo6aHTR9iTfDU2NexeOCxgwtk42GwA/MpUYE8tLl5kuTrK3T53jecHea0ihBt8M/GYrFlj/Imb6rl0QlUzaFaeSmxE8oZ3WTAfYUkNy6n+Lp8tVlLcJy1AQWT+cK/hqFoRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzkwMZ0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzkwMZ0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07553C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718605703;
	bh=PQJlMOJwsiQyJ2qzxfYaf/i/RrJs7C7JHYkVSbwsJiE=;
	h=To:Subject:From:Date:From;
	b=RzkwMZ0/MFTUK6XTkqoBPDdH4x+DSh3OA1JMi9TYz2ZWBEnRtSmx+J5RebaCiv2Fu
	 dS+VwgNlo5j70vg/BYVinJBc9pt1XgWHziZ6WDi/f13/n/YWU8oUjNvttfKqxEdFfV
	 8twF0DC8SPfRGpuFx6X4imI7mKo+ztLUC2EWm0x8QbQ6J4gqhcD/QX3oDnPeAeNVVb
	 BxzUjhivkbcBn9bzOQwZfvw8R3p+womEFD+t4bKvbB+A5q6FPch4kwkcYft7oABKjb
	 EhrX+vRLgK3vvxgAGaMFZ2R6Xi4jb+wR0dZcZLkJUbOaZgm5EZsE/5SdJZMrtqfF0f
	 AO2t7ZIl9nDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D084DC27C7B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860570281.1983.17751460594823021312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e491868ced92255fcf738cb5f4874749c394e20eb108b8f1294716c0d75d42b7
Date: Mon, 17 Jun 2024 06:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718605702
