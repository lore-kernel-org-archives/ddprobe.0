Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458E03FF89D
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778511034; cv=none; b=scBWQHzNYhAo7l7YWwNW6FHDnexdYLmhmTqQypNp1V3V91OrHqUkNsmY4RU8ZjqN9gufw/cXAIJtzv2A28xZ7usE4jjsPd9UQ+vkYO0gDtij8mKIpnEjTGKl0EzEbz5xHiY0V/WXuPjBKPOJgpwIjnkTBi3mNDzmAiOnWlq3Rpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778511034; c=relaxed/simple;
	bh=bTsKo5NBS3B1GeT8HkfRVip3E2K8pRT7HxUCsRLheWc=;
	h=To:Subject:From:Message-Id:Date; b=Kjf5COj4/qC+1Fibf85vUom+XuMLs1W2bjRivAVwL5HjEqPO5kDc6h1/EtVCWwxS5v6/OL7q1bANh2t7BAkgyvW/s9bRHKXvulWdGpACHniiazm/n2CjhbMYeN0Xf52qSAsYOZrRlIxEpBeVcmNngfIAf3RRrI0tOgWlwPjhuOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AV+dve5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV+dve5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB005C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778511033;
	bh=bTsKo5NBS3B1GeT8HkfRVip3E2K8pRT7HxUCsRLheWc=;
	h=To:Subject:From:Date:From;
	b=AV+dve5RXEz1S6QftHjHR8a0JKmcZBF2Rxtir0iVbXt3tKDtqmusseCCElAcVnqGn
	 Z4Txmi76KTuwmjhjI0xYXBh4TVzObIWy+81Cuni1UMZo9jOnSVUjbZ0b99/hjzJgVG
	 lZN6nnd/ba4Xz/zealFwcq8fbH23lbdyeMwDqwjxLaZhaDwAA9MGXtsOACaUjCXGm5
	 7WR3nKvRulsFWW3Dq8wHGSYdLpWnWLlld9S0TXMqveTJ2dSZzz+gaPL7v5Ow5wQt2B
	 CRu5STDJKMVGxk1nxMCv2znbE2iwQEjyUEzbsE6Ugno/cjlCekS0a1CSbok3lXPEVi
	 CRnL9jKF3Cr7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EE5CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851103372.23163.5232804097916873046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b4d3948ee96c6caa1102c98cba780c219b347f8003e019e5bd89166648b980
Date: Mon, 11 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778511033
