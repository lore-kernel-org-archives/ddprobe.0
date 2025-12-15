Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F2D26056D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765786974; cv=none; b=XB8om2WnuJBgi8S635WSqXv0Wvj5AsBvqLOlQkSdJFE+QSe9I9NOB8rreoOzvWKp5Z8BdHZdrFBVH0LyKORm3qwFmladHz6mzRIKmf1MihSLNPb56AhFkC52L/Q41CzbavSNpW9n9Sjp0R3j1Da4hKwxu4ivHvEHnpzrTciiK8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765786974; c=relaxed/simple;
	bh=YYwUG4m0If3mQ7v9Zju1lFwA4WW/2jA6akECByAHTlg=;
	h=To:Subject:From:Message-Id:Date; b=b6jgd5pykkEAMOxt6cK18d4ij3YiK7f2sXPTyIXF8hRBoBFeRGEUq1y1cEq5YaSXdL47W8nb5WgVBd2Wc/DOk3Jn4IsAXnpGsRiAvAxBI6SFU72nafL/IWxGpxSp3CpFr+VKMkaxvjapYq5S1XaFp/k7zyS8pMqkNd2sE376GiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCw6iMSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCw6iMSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81A5C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765786973;
	bh=YYwUG4m0If3mQ7v9Zju1lFwA4WW/2jA6akECByAHTlg=;
	h=To:Subject:From:Date:From;
	b=SCw6iMSbgV4AbVH8YREVQqVXj3Jv3FiMHPQCBTN0ixw5UEfeqz01pqxKSEEpL7+PF
	 9/gRWUTsQw3B+JQIYeheBZRSu7lKujAbOGZP6i23EX97mSM8Ar+gjcqjC9jcGKcFfm
	 IUzJG8V9gDrY4O9//eyhTtagDGctZk6NE5YLv41e4oXZy9xGM+buDZDne+u7sJGT5T
	 72xZ/1LquGocGwTc80pGjrTk4Y0NCNe69ySS9GcKYawolj+A0QiimqgY/ap04VgqaG
	 CD91epioQ5q4u1X/yTJQFr++Rq+Zl2kD5dVlDDBhsIQBk5TpAeuOJPlcWQkfbDTLlV
	 VWslSWGmNyDew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93914D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578697359.414.12936429162949136966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fda641244d44d96a97117f35d2b1808d08510a44019ec445490251a8c9eb427
Date: Mon, 15 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765786973
