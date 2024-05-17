Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAC74C69
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715983343; cv=none; b=pB0bPPPiZglFd277QigPOMvLgF2+OV99VCnsD4yPQVMXyL3hCsj5YLIpVg/vMWWciRRFLrDcs74yv2uWYxVNDiM6ZgumRH8mL5yYLmPymLVwQbzje2wPjRIHIvXJOnh2+ivDASC0F9paeYmdx5STCyW7PQu7ePJXVGcUp18+mKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715983343; c=relaxed/simple;
	bh=WUYH3MTlzUT88XbyLD5h4aNZeuLarZKdYHR7q8rrSNk=;
	h=To:Subject:From:Message-Id:Date; b=uBedafTgC2f3Hp0C4HjI/u8k2eVmV96RIV1pbqmPZtztwVCpmUC9AQEhXx4GgedwZ7c8D9wX1YRv0J74s25pjlAE+ZqCCanh1l6vDo/G/8B5bEeQQz3ctP0xjKIoAWZO+5ep88V3UNwWE37Cav/uR8LgPSLt69KhJU2ajcFpM8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnbTzjZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnbTzjZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5651C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715983342;
	bh=WUYH3MTlzUT88XbyLD5h4aNZeuLarZKdYHR7q8rrSNk=;
	h=To:Subject:From:Date:From;
	b=CnbTzjZvOkk3NFZxYCyewovHCveqSvq+xR4iwmn3EEpr+pl6sNuz8Kj6nkZC75E3P
	 dj3XqFWDn9Zzns5Z+n8hxTvE0AQoDz+k7sjBqONMb4KoQY6jJsRBpYrt4g0OcGfSCi
	 dRyDZvtSDP14gEtqCbfZa100rH9v3maOsB40qsZ7wy6QPsKXhVpJsOnNVNpy5nerql
	 2PGxIJDxB0Ctzpud192lYUJIMNuQUfKiaXgrc3B96wwjtP/4NhelM1tDck1pkzEgyx
	 JFjxazWUWPfvBPQLW7z+KxlUhRfqJZIg1AUc5G0KN1vxsGlHvl0l4xlPzo1GJyCW24
	 zHK3oGZVw8c/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFC7C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171598334275.25903.5582487641712361161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3541ec4533fe799f5c0b6024fc450fd03c10680c44cfa556fa084ad042080d6
Date: Fri, 17 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715983342
