Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E891376BE5
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771938894; cv=none; b=ggOhXbAkef1oRApH7e5j4vjPE+UZeIwOv//mqcgcyhssDEb9kwDcWa8Gt68aNC5BPQUvvo+/2Sd6CX/P9jSAlJ24gwXTHjOu1LDHZDEpEig7udLOQBNx2y1AKGhDLQ1orgFRi9XDjfBWo066MR7b2O6Z6M4F/L7ovBwVW6NXuiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771938894; c=relaxed/simple;
	bh=3K8yIqqPHYZp6vieVgpqieyg5zKL8THIOunfoCNeUBk=;
	h=To:Subject:From:Message-Id:Date; b=rUZuhPwkRzp2WKB/a/Xp85hBRMOPZW2ljqwX/5dGfdaFnDC8vI4g5gQuXbGxMbTUME7miQzmue2fHPZSNIjKJjbX6uaGdxO2hqeRhdcMlIOi6ci9iehOjdCsV0XrdxqBMfpsvLmrPOHOdR6DDRR/A+LHkyxoHL2NsqyNad9wmVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+NtfoXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+NtfoXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AD7C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771938893;
	bh=3K8yIqqPHYZp6vieVgpqieyg5zKL8THIOunfoCNeUBk=;
	h=To:Subject:From:Date:From;
	b=H+NtfoXnuSoYgKb3Vo+2xLb1IYK/OGsMPp/GSzP9CaUV/xv7hz0KwRiPwjrGTEzdI
	 2OCK6DmtIsWUXhAJzNacgQSWh2x8mW6IAL16bFHA60xUbdsB7aLkkeWnwSX2a7ruWY
	 pROaqwydeTWmaLjQVJ+rrpkR9nOGMHWCQH1MsW8aKZh/s5dvmtzj7AkfwgYly8VGn9
	 VLL+t10mGxWjX8j8A+CbsmnD6uPY78uW5OzpAM21HwGd7SqUxQ+PVr9LZRLIH7I9Rg
	 kkg4K1lC0EPNsmiVieh7WDBCzLyaHAvsrOkwM9hRtLGvbEmCqwT3RNwTQkNkPDRvr6
	 r4g5xjIYY/Rjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FE4E9B262
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193889358.5990.7898138373795747994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b1320365fb9abe699050a7741bcdc584bd273cc1f055a957e49fe11e4cf7aa
Date: Tue, 24 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771938893
