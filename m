Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3397323C503
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762301994; cv=none; b=N5um4T8RBlKWDD1vqGximQWQDTXbp+/Zve/PPxK6/N58VhvNDZpDYn9i0nyrheIS5t4hSVpICDeQsDXYlqjf7MqNvTCuzhXIWCZgl+MuuZS6rVzYjzoyl3DCuBWiEjE2llIOxeAf0P9/gbykyXHJQbgcfx5eviD4XujJh3KlLVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762301994; c=relaxed/simple;
	bh=dbpGv+SHE/xRt7SP0nfwZi7+06UX79vglB2eDrbnVBw=;
	h=To:Subject:From:Message-Id:Date; b=u4p6c8zRng4o/rVOx6XXw8wNZFFSEABt8VZj58vJ2giMpWeyBNAAVrCE0kDAWIHkaym6DwwHiaze3KB/vgdjhL+otkTUvngFB3bW96CIhOC2R7Ir2cZ2C6AR9GEjiynqPi3lodH5eg6sX4bIDmKbADmh8kJDFWnPiuuYoRGzkpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bj+ahYhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bj+ahYhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E6C116D0
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762301993;
	bh=dbpGv+SHE/xRt7SP0nfwZi7+06UX79vglB2eDrbnVBw=;
	h=To:Subject:From:Date:From;
	b=Bj+ahYhHNH9fWqVx94ff3zfFr+TdlrRrGaG6LAbOzfDG2HKnZopkThBESJbwqgNpk
	 KHVQbD4tWSg3CJXWl8G2MQveNaMQe0mZO9ZaAq2esGTur97+kd7Nun5XA5qikrDOWn
	 bMyPxH30be+jb7BB3vx1+hPRAmEiwrXom4GtlhI1N9frPIMm9ClHLWd/29oxTevNHS
	 0JSVvGSHhaVHKIHocWDSNzE+3sLNpEbLkwAGQcJOaQ+0WZOAApjHnsXZ5Nyr1N9t5P
	 b+3D/rokK5Yc7w6QVUqCduplJ8QzRa7GJ9QQaJ8ltPmskze2o1NUX3TLN7bIUlE2QO
	 DWe2Sq6ZGFXTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C6CCF9E3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230199358.29231.16904466994446203337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b0eff0bbef5896716875aa8000dd33f8937ff68b3f45b587a5e848e474c29b
Date: Wed, 05 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762301993
