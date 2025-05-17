Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2666AEEC8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747445395; cv=none; b=BukYbf6rTInpsb0Y1BwjW129RA6ZqU0Z5GZsmtTslKy55wXRNaYXPJJBgDo3xwII6jX+YoEW/VHukmVaMV8kLJymEc76sO1Z80dbPE+FfjxBGlJmhKceKOo+irq0qLp8q9ptpzuVUn9OY1vQpC5awc9EixByfXBTmEXossVxXms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747445395; c=relaxed/simple;
	bh=7bHfmnu0eY921UM+9TaV8+2yiNgC8iWdNk9OTKN1kZA=;
	h=To:Subject:From:Message-Id:Date; b=TlphhOaQnHH+LPvJ/7E6PDy/SUPeNVxVOC6zyupdxI6P+7hFEz5sC3h2sr9lXVe8YMNTzDlMRH2OkkwMOyeN5CngRcqAaX1Owv/PxFZZCm11Wc+OhGzHEs2eOAn7hRnTY3pBnGF3Xv1yaKLgt14pDeAy5ZfXPjbOgDVLYJR5Wog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDuaxlBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDuaxlBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F61BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747445393;
	bh=7bHfmnu0eY921UM+9TaV8+2yiNgC8iWdNk9OTKN1kZA=;
	h=To:Subject:From:Date:From;
	b=HDuaxlBtNVQ4sj61mvPLpeE3ATpIL9X465iwmzpt8wBrL1M6VZMZzRXqk0+jDzNej
	 o00dInrM0ZJksCcMp27ZeTAqrRW0n0NsS8F2iw7lASlkXUNIXvGZAoi1uwddKp1If3
	 VpJN8SSpRCqMiiwOsTcFN3JZOM4bibjIf8/kRXlwH0wX7sd13ufaXJwfsl9mt85etJ
	 ybLMcaAuDrMnYbc6usRxmJpLf5TRFLjhgQ5vwblasYFBGq4BaRyD3/9No7jvpVvg7t
	 tjzXtQewCIcUCS2zAs7IF7NmzcB0WCMlVUaBpxP9TnQhqTENTzz0wqlqOFQ5nMp8gI
	 U/ytwszyE/Z6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC84C3ABD8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744539357.8950.183568007636155087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bf3b34b13a141ed2296ac046022ee8876b1946555f383728391638cbea61c0
Date: Sat, 17 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747445393
