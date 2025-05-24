Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3E82DCBE8
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748053794; cv=none; b=sJ8TnU7IiNfVRnU9tMn33l+6BFyngASdxEPx8VUvKSjuE1kdr+cZkIR+xZfJe3JSEJ3tz6OJhWumTTruhR5MhI+tqFBcNxjD5wTeJ7KWyRbIOvjzPsZAR8iXYSx3ht8VBUwYN5e4xV+kwk2Q1j5uLAez35PiKki10GrWEYoZww4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748053794; c=relaxed/simple;
	bh=KsmESascJR7CFVFb9LFcfMg0YZjTRKOfCflYwooyP2U=;
	h=To:Subject:From:Message-Id:Date; b=l4Hnya+2h1zEomUf4vaaZdYxwH/b2R71f4oEcrb9wwsX+YhkkTTpFLhMEJYqcTksxUrK1jr+CJH0U00BBgmgPU21jPBDP4B+bbGIxOBSyb+ziFDulqOGZlRPmMbxgRNwR8O9DvhUAAM/BAUzpVcZzck216hr8XKNbJv2J+0KtJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3cOs0OW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3cOs0OW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C9EC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748053793;
	bh=KsmESascJR7CFVFb9LFcfMg0YZjTRKOfCflYwooyP2U=;
	h=To:Subject:From:Date:From;
	b=m3cOs0OWaPOKYYYZfZUdoTw9YSYpFB8gUmCPk8nr7jsJ5LA42ZWb6D8L7oqwNEQI2
	 MweETK0Ue07zlB46Or+Oiqd8BTdf/V3yYYFJ9KsNVrejSK00PWnK/YJ7njv+lM6+Jz
	 eF6+1gFDyX4xZuLVl8kaStvf6NpOyx32hk4kJjda0Qk+D7u549LFyHpZQsj1h5IPUu
	 lM9DYB6O6oor4fZrD2QI1sVy7UMuztNJvjuyF3wP+KNNpTPoJnY7Ts7ysGPNaXtecE
	 j9YNl8TpHSFTLQQPRhgewMKcdZHbMb4jW+ZS7MQjlT22g8LxWh1/4GfVrPypM1MX1E
	 idgXDDnx5lQ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9447CC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805379358.10474.14834183743899301766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f65198930dce7f7e5f44eba3af794eea473963575485d6d6acf3c68b856e48
Date: Sat, 24 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748053793
