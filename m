Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DED628E0F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713379763; cv=none; b=ShtxK18Q/iePmOo92gpPPtQh53gwh2E+a/T54OHczXiBg4ihjF8LNmQT1B4BndBtAv0Pyz/GdyJqaYpjBVRBDN32oq9F59lfQs1p1p22O9wgKrZLTGRZfE01P9CbFC2LhAO0YzUu7UDID2v68kWpgGFp7rnErkbpOWk8pSTPvbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713379763; c=relaxed/simple;
	bh=YkTyueZBhN0gRnnSMYlJHRQKmNEO8Sgwu6qYANE4Ua8=;
	h=To:Subject:From:Message-Id:Date; b=GMpDLP5lW2P/HY5cOg6ArYbrX2hI0ItKb3eFbB2NiIXiWZLoHAoq26f+FMuPKAPn7oksxsHVYoamrWiDYaUQ4VKnCXb8fEk2qGKt8k7OBmvF1LDR4yyMUTV0nnus7ShuvoPBGKE9scePyjVstUDBP7lEpHWwINV5/fVWUsa2MwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av52h0Zp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av52h0Zp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E778DC3277B
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713379762;
	bh=YkTyueZBhN0gRnnSMYlJHRQKmNEO8Sgwu6qYANE4Ua8=;
	h=To:Subject:From:Date:From;
	b=av52h0Zp1odGbRGJX5LitGD5MYu5dvnqHGBUrDG35IjCKZnMspLMN505vOmMb6Ky5
	 gk9s5SC7aHkEicoc60Pb5zcwqjWtug6mzk1MtOcBqS5IfsqRBGeHmmEf34OUSEqk4H
	 5N5/QliB1tPHJQ3u4IZHsE1rQExthJvXrfXqUdtJmJgal4FKh7/P5bS0oIX8pRThBH
	 xL7ujbys42MA6K1Cfu9VCCdJSQhufKYM3zD6gS3ieKXEN1rig1JuYWoiw8nkc7rlBG
	 3c87LVMawwldZD/AeVzMinOIv+kYhZKil0DO7Tkvd1JAj4h/6CWjCuIA5JiDNGfHar
	 umVKc7vLXQk/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4CFC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171337976282.17953.727389810725983740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8509d92dc37323e66eb7ac074780d58d94abc960884bbbd6f6acfb3a370f077c
Date: Wed, 17 Apr 2024 18:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713379762
