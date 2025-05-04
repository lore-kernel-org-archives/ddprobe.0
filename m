Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299E5BE46
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746377994; cv=none; b=tjzF9KcdMb58yBMFh22TCnmGZ/zcyB7tGvTzDloSntgLbIDsIHJvhG4g59kEIg8roDaLSzDGtAcrxwYwex8cVn4yag+RlWVH8z0xD38uUFn5BtnqL3xalh+hdqkkHRnEKYfX5/lcS0xSJo7f3l3vu1n8W7JhOKBFmhE2dATXoN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746377994; c=relaxed/simple;
	bh=A24gars4JWb8bdfq9YBOr0Ry6IH5KsRFKZ8hBBsbhYE=;
	h=To:Subject:From:Message-Id:Date; b=ZqZpqRCmrSMeaufet2t4xhTnN/LzaYqEgkbCp3zLuC242GFfYPKRx0ZoASNr4ecHN4XP/XURgOa85sbQoDDZKbOcOY4IlT9EGlcTP94Ak6ugFB451dzB9TRtuboQXjgIewAngtgZPsvwBPhhdVtjQ1vOzjn/BVvAoUzydJSKgk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmPQdLBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmPQdLBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746377993;
	bh=A24gars4JWb8bdfq9YBOr0Ry6IH5KsRFKZ8hBBsbhYE=;
	h=To:Subject:From:Date:From;
	b=BmPQdLBdnGO0BcDNTSUDtwp8flqDVUPeqLOXiV/3tMP0Ql1oACKQM3ljuCJqFW0FC
	 Ff09U0Q3BvqPU42JSlUV8KdVxr5ksbQ1lUFjmXJrFjNSiph12uZx6MqOYgNWC5apOV
	 qBwW+aO3SICXqRgIxoptjzRA3dGRrNp6hN8crYMVw2aCrEPpovNinQ/KZtAIq7cdZj
	 Ivw8tfIJJxcQU/fj+SLKuN4IKWhB9rk0WxlwG8WH9MTn4JXnx67jdAwdZfAXmuitLU
	 xDWRdtV+yPm44sLURRQazPauE/Qg1Y04etv7+XZv/c6AVbz2qoxFPvzkarEg2q3otC
	 JlPEb02xFz6Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D0CC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637799357.4449.14322171805377418333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca2cf52b39013d129c37b80940c1b20fa589f58f8369d1d98efd11e73beb1ab
Date: Sun, 04 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746377993
