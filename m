Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5419C3DC4D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791274834; cv=none; b=t9vSwJ6sx+//Ztb1aqCzrPJACssu7o4wpvKWWnid2xWlvq/0IFt25XH/jeH3qpi+PD5K5IwP3Wp7MUH0VQoT9Va/4cBXxwJR4aNoL6NJvGlA6P383a831F5W+GIZw5HVTBghrLp5o40E2pOS1dzuTeElvcY+ho/nIiD6wtBggx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791274834; c=relaxed/simple;
	bh=CW/IbaokccugwsNIEKokQpyLl9LEfT3fGECw6Yj+g2Y=;
	h=To:Subject:From:Message-Id:Date; b=BiY9s/ngeCPwxm6kmnomngEgZkANj/necyup9OJV7Z5m/I+J8sM5fH+9gi6NPCqej542npX7l2Xtd6NuolYmzDxWBKTMzc1N0TmZaxPxlkasPpK4X9u3Tg7WiByPWrZ0uBmCKsjJ+Ek9xy7ew0JbAoMWVQ9oXPNN4ACpK+/1uuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WB8peHUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WB8peHUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5AAC4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791274833;
	bh=CW/IbaokccugwsNIEKokQpyLl9LEfT3fGECw6Yj+g2Y=;
	h=To:Subject:From:Date:From;
	b=WB8peHUBFLqqZdVo/O62Uk49vIe5KM7xwvpq48R8iWUCECiWjcZMlm2T/QeQMxIbf
	 6puSAKfRDybF99WXV6Kf7IBSZWYLCdoRgPU9geFC/zAkG42+aJfviWhwBllIXB2zhd
	 NE7anrqGKxvCAgUwoLw4DRY5+kJtcjk47I9OT5riT39zItm/2NNi/LYTaANudJWYHT
	 xrM5ZnjeNHnfqBsCF+dFW8/Lcs8pjd3Qq0USH21rn4/frPj+5xegdNS6rE9M37H1ZL
	 oqcADicu3i2ng/WU5eTAUaxqiLttQ8iTOJiNwJHqcQchYbzmdVWqI1ms8EzCmP9FJS
	 88b0lVdJ+zHMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A14CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127483368.13163.9318720537465028347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9397ce3fc0ee97f350f4b720d956970c18d257b0235a5c0bc66bfe7132139fcb
Date: Tue, 06 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791274833
