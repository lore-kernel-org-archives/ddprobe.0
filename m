Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF9D14884C
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775412334; cv=none; b=UUEGcU+kXg+OHmRWxaabsgIp5HUgRxqzQiDAHhvVxQgDapgCuhggkOhWxlGk4/Qd8JwxwnOSWMQi9maIAGqYctoRS4ec0lVUuB+GXMJQjTI5oEQGCMlsDSvV8TBLp3fWiL3i9CYh2fOD3g4Ur2tA48acY0OkfTjVjV+F5EI+06c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775412334; c=relaxed/simple;
	bh=0EpNctbLBh07J8RZXS/uT+VQqPK0oBJ2cuvzxHUeZu4=;
	h=To:Subject:From:Message-Id:Date; b=qhC4qaSiEdsvN4Ms+mKeRdPnGR9TbbH0ZFAeuDG9PgOZVc+Z41YVEFGyVAZ2GQy3Q4+HkQhRBXnYc7GpjdlAwWUPSO266cfnG/vY80j0BN91Vi9CUcPlM0UTFJDut0x6nL3I9rRPGO5F/DBATF4rYW97rLsPdMvLJH9jAXU9TH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEbXDbCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEbXDbCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F4DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775412333;
	bh=0EpNctbLBh07J8RZXS/uT+VQqPK0oBJ2cuvzxHUeZu4=;
	h=To:Subject:From:Date:From;
	b=TEbXDbCx58h8qpK1CX3nrcrOiCZMA6EA1SlBEkxXW/nvSVJW5LFo3ts0AQW8dw001
	 egobtoIXKhavea7vFvFek8gQADf8SoQpnXw95LTbUMm64SUJ0Z2m1I0Kaiu+NpHi5L
	 JCLqKV0MHoSUUANSOyXQhTSwaQvwroM4zmyXdEpqb00pi9SMnoqL7R0AUvhLmLc4QC
	 hPNMXZyH8nLzr3gIYVPj2Z/pRkIu83SlrpP7837wRFglL0ZXvPTdpTa4VPeJ2vRse3
	 IA5iX60n8xbEGkbBXyLMkOe8Uvqihepeq8/9Z5Q4rbq41OlejbcD+oRg1Foiz6iaIz
	 LVG8fSjuk2WQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0F0E9D812
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541233369.3581.7079594403682130879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686b70bfc194b042a55bc65950fe29c0560b35536709f7d593edcef31024d34f
Date: Sun, 05 Apr 2026 18:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775412333
