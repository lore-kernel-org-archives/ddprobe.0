Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CA9DDA8
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741291134; cv=none; b=INlfAliV1YIC3Hx6620SHPj27CKwui+GdTZfJKxSk8kvKsVR3uP7AFD4q0+idTTvO+dkUtUEhIBGgbxQoja1gHUdNUdcHn4x+6PPVwPs+NC5fEQykehlpZwjV7HsL7YrD5mRu4yoONvFA7PZPPdRJgY8uzjcJBfGDb7EriSJAxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741291134; c=relaxed/simple;
	bh=V31PDRGJR+BZMAnD3/wEF+l2q06I5UuYcOQEVmmvDg4=;
	h=To:Subject:From:Message-Id:Date; b=prmHrddxwz7QFfa4vhpiQrWMhOEnKTz9wkF0aTYBgF1eiawge0HlWplK8XDTKKuIn+8juMTdIHZSkIelO1aYPOtM7EiNMQIdaWnTgBWcc6nI/gLqMzojrFp/Db8bgahcb2+XxQflXZLhRJez1sdt3+1ROvjGGwNo7kptqUrxBrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZEABFpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZEABFpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E9DC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741291133;
	bh=V31PDRGJR+BZMAnD3/wEF+l2q06I5UuYcOQEVmmvDg4=;
	h=To:Subject:From:Date:From;
	b=oZEABFpx5IsDsBYYfX5Jeq5juIvTpRRB1f092ij9gIKMXIysfHxFpvw+bsvZLVbxC
	 2WQcby5gRjcxI9jZ6ZOURRr/kyeZykKO5rtDIniSPIEaAIm9XoC/GUk+JnmSavBfq0
	 v0/eQx92zLfAIgZaxSGapLm4/nMxCp8g//ed9KmzqTRW0Z3YmZShWulYyp8/rf3QEo
	 eFNJa5fZ3vc39yT1dWS/o3QvKlT3zFqsrM2UDIgBcTYhZ+E4INIgqpZJlVAQCiTCdX
	 q6Rw6dbiQ0dSGBrKBG26iyGNQBF5u3vKV2gR411jwMwD2u7V9/ntJ03uFnXWhJ6gnx
	 HUujSk5bXLVrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DBCC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174129113359.4143.6939866180902724011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5d54fd344ec15d1248e5cacee796487ad388b29452bf5d1c3828a224130898
Date: Thu, 06 Mar 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741291133
