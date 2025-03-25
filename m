Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6081C6FE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742939993; cv=none; b=l/6jNmYfQmKWKTfRHHYHDIZvVELnoTGStjSNzmGl+koH1k678EcyCeXvJLiSp5V0PpLIMYTCRpKABBQnmEkmLn43kwPbRxwqmo6KBBv2EWKS/sINDkWmsiHReaQe1ANP/Tj4WTTSu1kO8VZCJkLRa3pMM36eZCtcgX0h2jljIUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742939993; c=relaxed/simple;
	bh=/ofqxzLWWYy/CjfQUQPLHDAf90RX2WzRJNTKiZzlEA0=;
	h=To:Subject:From:Message-Id:Date; b=G3DGtL7uWrX+M2VbG0lAyINC80mbXp5stwykwL9PPNXO4Eq/Y6GJsn7F1gfBYbPWRzNUFMxbWLMXet2csHkdc6b7s7cRc47l5pfCae2vmIre9jLD/iXubiDuo8TPrYRnCCc5lwaaftj7ZdQZxQi0QU4WuYXR7X/RXGfdtlsqxE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTQEkcjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTQEkcjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A569CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742939993;
	bh=/ofqxzLWWYy/CjfQUQPLHDAf90RX2WzRJNTKiZzlEA0=;
	h=To:Subject:From:Date:From;
	b=HTQEkcjyTIeSz3F+pFX88wSattjOmbEwsPj1+JpI/8weUv02FZdD1nzKoxVkM+T11
	 uxpfKWkXYBZ0VreaHal4L7+FE7b0buKOe2rzV1ZmslTIqjsm3WKW4NwJxo1EQB93ar
	 wUNQxlHMdRfzX9q9asulPzkQiCJSBl9HL6tj44Of9Bb0O65H7XI2zcUUONYY+9C/ED
	 j16KWyAVkhgcYIq0NQY0d1awzX57ZuZ2vBkHBdMcJIAAuNuHq1e2/ARJoLfQQ2OBfo
	 5YPv065RlJUawKNY56V+BK95pALAJV21wUr2BH9o9mVDjdM+4xXNF0TRBVBca8Fkxf
	 dMMx/PB4kxvDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FADC36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293999359.29462.17047293403566695476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2012ff3613db95adc4d01e646601f8f1d38bdaa73170e7fcc4b6f51ed4726094
Date: Tue, 25 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742939993
