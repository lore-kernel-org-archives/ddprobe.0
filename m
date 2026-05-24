Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C70343890
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779598354; cv=none; b=IYfDhycKA6LGYIpCcO2Zt5LmD62wTHZLgGE3hAk326BMc4+SGHc0AsdXcOcjxrZi+sFA1fbOfsElFZ6K6ohssNOlI35rbh/8aBLKYEQtrVhtETNtpV9OkBxojs2n3X0jKZQVnDsqLOLo+P+FhBnvFV/ZGNJxIHDowD1R9fY7tk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779598354; c=relaxed/simple;
	bh=9wrmrcjH87GiResS/FwwU7lCs6u7zrKLCIFr0MvljCE=;
	h=To:Subject:From:Message-Id:Date; b=kPt6RyNqEZwkMViU+dVSi1Pcenc4LD3rc6gfEVxlh+r2l4jvfAIUc8WIccC+wSQJynmQkj3uJnDZmPArFvEcWtdPRYkXZKIShOSOpombJNZVe9mFp7POtwCH0Q6+c6FzNxD/PLyjXRffR2OAuo3MqKZeSLwq6RP7Vj/kYqPZe/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zh+LUl4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zh+LUl4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B14C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779598353;
	bh=9wrmrcjH87GiResS/FwwU7lCs6u7zrKLCIFr0MvljCE=;
	h=To:Subject:From:Date:From;
	b=Zh+LUl4hbRWhrR3sz/HAWqQUGHbk3J+JXhdQWOVhFMpxmhREvJRxX1y7n5VYNExdk
	 pN2sHsMv+rozIPJWVn0408wlizVkb6C7Y5CDC688PIbG/lb1x+ayjNxAb68Ua6oTT0
	 nZOhjEXgD1SmneKW9sRHF1pFwTntj4TxXjWrlRCG0o/O4LFltmDn4clmTaUBPP5lp6
	 bNpKDFnHTCogkKaUqkbw/3dVD3IyiebxEfe689lBQrgeNSndyPfHwNc1I70bVV6y7y
	 7x65Q39UeIzcjodSk+KPHFCnK8jlvXNdlHV/9MVUyg0E6w1ubOtKgxhB9cZJqoW0C2
	 O0/L7+qE5EJgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A6ECD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959835371.16569.6902531326985906496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e627f7961fea395eac2b7d580db668d17e0d9b3b90127d86d848a9f1ce74847
Date: Sun, 24 May 2026 04:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779598353
