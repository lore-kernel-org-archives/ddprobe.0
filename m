Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A162F60CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781815594; cv=none; b=mPpFyMzZyYO5+uUjffXxeV/b2xNLXh1epuQSltiaSvOleXWoC5OAJlcyUbP9VKf8v2IgLNO4s1WG9epQ2q0xX2logbLDk7mFmmQcu/NGguzG9QG2O5a0J7QG2aZK9QGxpBu0SEGNIuCskl/6cDdel69ZHVLIHq72oA0peY6lJZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781815594; c=relaxed/simple;
	bh=QRLVsZA/aOUfE7SSeQTIlMFCUPAkCLOOhNV29W4qZAM=;
	h=To:Subject:From:Message-Id:Date; b=U8m76gkyEjmqJrLH+f17ls6g3hmG36I16sQE6Lu6fswaUHyBoNQygX3luF0oCtwc6betW8PHhTkTVOWheIT2Nmw+utb6SafH+glYrwxjS6khHlZmqTHOBW4Qs3OSD+ZKq6NQsTTWxAGlZJiLcbd9l+P3Vr+AJ3JI2YMDraNW2Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yw0U8BRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yw0U8BRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A88C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781815593;
	bh=QRLVsZA/aOUfE7SSeQTIlMFCUPAkCLOOhNV29W4qZAM=;
	h=To:Subject:From:Date:From;
	b=Yw0U8BRfDGUYGCBlZJbH3PJfqcHQ99YlRw8WxgS8Z2sie46J/VzuvTt5A+XuTtngs
	 miCiabQ0mxbGqErpAg+DfZkI2JrQLmyTn85rOy0o/fh2KF9hI4it67rcpu9tAAhHwG
	 105wuUFmn8hwkMyErF/rdoz9alXC9NM6KJgHSO9/jGGzUQwX/HzDuxa6x+miAnJoNW
	 hLriMJsb0u0OnkT4iVipk4doHUHurdZ9cVt4tBHImysX1mbEnLFMVr0h7jvjMjxJeL
	 JP5FPNol3WDHaynwCzMfU/HTISPKzQIJmcOYpzZOcIUnl1tphj2tIqO85mLZ61J485
	 DOejsMFYmrfkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFBFCD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181559369.26199.798683457755141983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0603676cb9f4b708410fc65307fa4b6b4882dde60b6fa36df0d936bfad04ce
Date: Thu, 18 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781815593
