Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281451D5CE0
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763839314; cv=none; b=hdXUcZ61pm2dG3e50jazG7MsIp4Cur3i9EQyFS6HyMGsgEDlYmZxWIu/nsS/bVtHf4fAyXfp7P8JvqHf9lJh07gIYK1FH8PUJDasA6p++XaUTnlRMYIoSId+Zhem5wup2RPMnlGjMugr3QpsjOBKGEeK2iQ+vd76XjSWI5cszjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763839314; c=relaxed/simple;
	bh=xxcZYlxbm87pEq05Sz2ovsjLmkfOXOGmzKfb/YVhnOw=;
	h=To:Subject:From:Message-Id:Date; b=eBGkX/xUQNZOdgivP1N280UN2MaCyOsI2UGlsqfiGPcjTIDsniM9oVgKbZikJDbrpnlQA9JX4HxdDHGQEGlS0TYjnxxabqL/nugQMQdMFEg1GcV9VvVcNBFmId/yx+5lpuF0DHxZu9ih/JT+KvvlAyjIwbQE98gNZ6hXg3QV+8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTQIunVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTQIunVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A768FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763839313;
	bh=xxcZYlxbm87pEq05Sz2ovsjLmkfOXOGmzKfb/YVhnOw=;
	h=To:Subject:From:Date:From;
	b=ZTQIunVvCdI1W8CJE02mGFZscNXm7y7mTIHoaPqqRSCT5yRleNGZufOzTDERN4cql
	 dDRTh+ivkSZbrYIzcE0d15iFj39y1i8EMCegGIt9rtvmGarOk+Lo6jcSBwt04M6o1r
	 eW0/h5yEJTpWxlCNKS6AOqKM7JfFcXrN0hZjMznp0cdYEQJhcn+z2r+7/ysa3smSeL
	 e/GkkRnbNkS5jKC3NgPuNS1K2LLxjRIIAAclmJE9bGkXO7uSHCoVRzIaCH8iqd1vw4
	 rBKp+x8BQMhtDoJtJNbrLpX0YAk4EJnpfUbxjoubf/AUkD0ZWNaBIMUBJA7vhlI63J
	 FjOOjRd5AO08g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952BCCFD2E6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383931358.21077.2539062710464129856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee804d2737ff9dfd1ef8d2dffe20ec3e5eea861e459289564a147936ea12c681
Date: Sat, 22 Nov 2025 19:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763839313
