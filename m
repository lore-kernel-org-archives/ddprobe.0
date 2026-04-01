Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2402DCF4C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775078734; cv=none; b=u525W+620SgRMFACx/P3Mgb5ibqYdq4e6Z77YFirqjW4Fvej8QWmeihalz/2+QZBa+v0i/R+K38gt8HHIhnBpLqY+aH5MKJiInibuNGDKC0z7LfCQqCVHEfjUc+AHrn61JKXMVOxNu8GPsbzeBe3kZjPKBaEiRIQ+6GFOU/NbwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775078734; c=relaxed/simple;
	bh=RWv9mfppXdd+tGcbYzJrVj8lytsK7j0MhU+hnXQdxQM=;
	h=To:Subject:From:Message-Id:Date; b=UQ9qKa/2gBw4ii5/AwOZxMO7PQMWybT6b2ni+1DXgXNs8TafuVRhfMfSO0RfVKd91unuUd/zIJQXNhlOrEHBa6afKyPcVl9lVnPJ9RQPM9lBDP2AFnsmfMB1SdSXktWIgD0ABvupNjKIkCYeD9IbHUZVRvKvUu4U2pkmk+LDHjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ayr+Dw5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ayr+Dw5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5A5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775078733;
	bh=RWv9mfppXdd+tGcbYzJrVj8lytsK7j0MhU+hnXQdxQM=;
	h=To:Subject:From:Date:From;
	b=Ayr+Dw5RD1vtYj0y37h3SwBXPKvAuvbo6mdTqycIObnwdzLijrpaSh8Hd5F+1/W0u
	 q26a3R4mF9Fz/olZqiKuPYwTyyoz150UhyLRafz2+0BplCcb6oJGecFxAUsjci5mPf
	 y/SVWRj5NOt4JURYUQN9EcC4I4mzlQ49tPgAe9yhZR9b6d2xmTE7a4j2g1g3pgSxNO
	 RoLwfuO6eW4De8ywj6oCgC7YyPl+urW8alZeTHTRSmQLqQ4td8cbxR6PT1LrFFVpUe
	 kJjfZRjgQfdDfD+NEwK2k4NrV/K4CZFV2pywLe7y5YYmr465g6i/2D4e0A818qvofp
	 GyKL0kuil6mng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA85F10FCAE6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507873369.10055.7840541086976264185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d98545a8cc7bb2026760412e4b863ebc66d13624ed5d23353a42447866602b7
Date: Wed, 01 Apr 2026 21:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775078733
