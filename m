Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD44E56C
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739656734; cv=none; b=d8e77UFQASkjOF7Fszu+Y8jekTt+4LltMLxXVrCkAqMoDZ+AyVVaeG8wm9piVeznzllY/Oh1q2+x5RWQNwKqnrLiNXJwvBQNBj3hbfbg/GrBrmDLKCblwNKv1zWuj+oDi1G5DjxVGA5yQzXYRTyWABskyxLWsMoOOFAQKtDFK2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739656734; c=relaxed/simple;
	bh=xanoW3NwV0gKEQpNLD9hJvRg7lCD0PY6vNdFRzKFEiA=;
	h=To:Subject:From:Message-Id:Date; b=YiyrLjErQULNHnXSuMRGf9Vet88NtfP9SErlQB/s4pwqqmCsF5bSD0BpCyYQ4AL/G7oquz/jDXi401qvrmlw9s0WNw2NYVz+lykrKjcOVgCWWJlnE+iLursMpqVS0BUf9sveL/Az8WCqhk8N7YqPx3Pb9AM8mSFNIU0ALIoYnB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e95+tANa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e95+tANa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B719DC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739656733;
	bh=xanoW3NwV0gKEQpNLD9hJvRg7lCD0PY6vNdFRzKFEiA=;
	h=To:Subject:From:Date:From;
	b=e95+tANalr8Xqbt6LLOp7bMaeRT8xAKOiBmcpa8Mr1z+WsDVW9nWoI3zNNVBG9m+a
	 4KzVlSIDXzLN6GeT8/UksupQ5Kv9Gps0WVuxbmia9HYa4r/pIByOsoyrh3jopAuj4z
	 7fGkbQ39m3ZUXUwgOHi6+WT0Wzmt3XqHkaXXWx7Yv3oCJhSwN+e9RIdfyiH1GAq2B9
	 aY9e2f4uEAIDzg30nqRTM+vx2Rm30RqTfaTHU5A1SNZ1PMjRTQQWGdDTCf4VTpgURr
	 FZnktx5OQLnqMPQh8RDQq/36ZnvZZnNSulsgxrtDQff1wXvzuqFGR86gG/Zy7Q0ltZ
	 0EvJurCyicIRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B56C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173965673361.26340.14079845981271873854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61bf569a5ecd114061b8ba1606014ea1ab0caad3239e985db3ea94e51d6c1255
Date: Sat, 15 Feb 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739656733
