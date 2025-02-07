Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CF242069
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738969554; cv=none; b=ZY0YkXjMeYmI5vdqukJqeyZ81+buLOHBUWSTNtAPQnLJBCHzTlLRtYqBF2xWaOgMyNJLZ8Ind3JrI5h15976phi+531cxBAJWZhjtMcwRl1VTJO15qRSGhAie7qWs85jacFVcqrYcx3U8s5bZgLDUJ3KLV8Wzm6F8XG1boqtzNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738969554; c=relaxed/simple;
	bh=3DtN6xY7eb9i9eUBdiZJDQUk2smGtYWcwjowcD/vdIU=;
	h=To:Subject:From:Message-Id:Date; b=SqJ3dMQKaYvzO7d/7XtDV+6pNe5TWbGDpqXOz1pGPNIAJA02tzcVclARGl4tK/VM35CZmdGWfVr8+qTI0MIf/HrinZW183C6A4pp9RQoovGkpuDnVX0jh2JAM5GjUNXzAb2gm6B4lnQdMwp+t9RF6pfCDmqTUlkNoY7BNbpxMjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWm8QRqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWm8QRqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7362C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738969553;
	bh=3DtN6xY7eb9i9eUBdiZJDQUk2smGtYWcwjowcD/vdIU=;
	h=To:Subject:From:Date:From;
	b=jWm8QRqwUQDkTQKhqVY5tQeUMLe0g4SQvvulAgtKsVatvbiuXRN70w6XashTW9JN+
	 rZM2lDrKWlHGMwxntdyR/8M8G7DWGjmeNtA+JuTKPbUAsknb8ZxvjYGwTVHbtoG5ZT
	 i6vgTDkZWvN/rStwteHOXlXlDumwGHKVFMRtkLmGYHtdhPwG/y6+yhUqSsqBwEjQRR
	 p9Ow2nXUMjwphdUoXMjtnw2mfIXantcX837z//7pz7+ImpO+xHZI8pqXKVqlDGe358
	 0b/PFmX0tDDjhJsVquaEeJ3FypI7lS5FLhhCUQ5kPW3bvVVMHC3QgU5QYKSB05Yp4l
	 kySumQ/Ydoznw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1EB9C02199
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173896955365.27363.6190447189052586953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb4a423b4100f49f611229bbed12c879abad0455a19e7e4ae6b48fce9587041
Date: Fri, 07 Feb 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738969553
