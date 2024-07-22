Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215C91804E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721664954; cv=none; b=vDEYMOnHilJ+K6CRIFNDOV/SOqLZkJPMuZNIUfzG5ro7JIgvrlZ/MZLsCij+sJi8qYYmc0Y6ZxO4LTdxfq9m8PWSAZqnJWukEFjNc05hSPuhvHVrZrHtmOXk0dXsV1yTQleagQ0b0Ba5Nz72QB2UClxtSXxpntLy9I0heHZYqdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721664954; c=relaxed/simple;
	bh=z3eO/H2klCwCVUDXL1p2anWNdElmwG53iS5yBtaV8io=;
	h=To:Subject:From:Message-Id:Date; b=sgW9KnilUtuP6T8stCVLomtIkp8K5qaZ8Gd1lq8EVl+oZf04Awvtn5F9I+L3oMyGOegEw+30A+XA+a2qW7sGgsrDvGe8RZLUHASp2hEt0AlrwkCm2JVTkqDZnRDtamkFQszDKEDLrR5n5q7seZ1ZxF3m4sHLEQ8P224ZX3ZmNBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+EZ3dqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+EZ3dqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8092C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721664953;
	bh=z3eO/H2klCwCVUDXL1p2anWNdElmwG53iS5yBtaV8io=;
	h=To:Subject:From:Date:From;
	b=r+EZ3dqjLYB39GwGspLWMN+cZxFKWiCdusuxSxz0+JeKhV2yeR9+rlC45A4J8pXpf
	 oy349MgMFZzaTG9lG7c2+XoTZFHmc+7dV4dmimVwOB2KBthWTIGYsTaVaKTMYVNhkz
	 Q7TuhV+MqcHD6yAbvf7RMBa6h0HTiCwBPgWRtKM88RlPyizNtWdptrGdYFbiRgQYu/
	 7KWAKw9YKxJKpsJm9XpUASzIQTlCHsMFzBQyXlefW6uuYCaaGzjcuQSZJVm/VQANe9
	 NJxZymFpacnMehj8MDHpkUPzo8t+2E88xVzwKb4gvK8jZM/jq7weKC5MpTk1JWe+H0
	 p2FRyDUbgliIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB6C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172166495360.562.12080470032202406131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bdf52de0cabfcac1e056dc245a16869f4c8e2913db3117082288df418faf788
Date: Mon, 22 Jul 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721664953
