Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798432C1595
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785831034; cv=none; b=s0ObrzzuwrFD+3ja16v1lNqQwcSsG+FYb7g5hJSVUaCwsZ0ukmwT5xDKRHp78dVFPvhsyD/sTYuIB191xBibNcujothw/Rvhs8vNuLjzxweBijySZx+4VA28oooviEA1CKjUmrVB3e1p9GdOEPVjlsnBxnA775rPrZ4YVX8N0Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785831034; c=relaxed/simple;
	bh=zXvkO/bIxFzC0fMhi9/H2hM1zHKknSNsHmJL3zWjvBg=;
	h=To:Subject:From:Message-Id:Date; b=e75TxsTVUAl3TbbTg9jwvtYtff0kav3CPu5xl2ivTFBdiltGcpJ22br8+BWy+l01HyzlsVsVs+P3sGBOkHenl2rv/vAPbr6PUR/kHP3Qzj/pjcFjLxqWM7ZvHqWwTVvgIohQm0dSnrJicgncCz4u9uHyLFUNaRdVrHdSOjX5/To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tg6uV1VU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tg6uV1VU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3F0C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785831033;
	bh=zXvkO/bIxFzC0fMhi9/H2hM1zHKknSNsHmJL3zWjvBg=;
	h=To:Subject:From:Date:From;
	b=tg6uV1VUKvpHgkmxj7p91P2OuPKFv9WNkA0mEnXhFXxmrQ2di+28ayTzC7IHp3PzX
	 P337MD03V4gwk47RIWJY0Inwmr2Odqnw3QCvvzZcrx8+3z1Rq5bP7+vbnhHG4OH8d2
	 iTcel05d4xOUDKg0h1Xy6WbKb6vX7Y3hZXt4+yzRQs0/WXkkJbQIE5Tb5rgxN+PDco
	 zrPQuDrSYDUpwBAZ25tmb5NWz7wN98fuDwSItUTqPCmEcju7o+k1EJ2HzSLv42S767
	 dDzvP9pbqyEDMl2dhwJhdUMdMSiyEa3ZNt9Ive/WzT7YomXt9bv428b/o2u1aYQ3p2
	 cTKfvsTWuNHfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF4C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583103368.18949.7956013043518253823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0910a767f7ed4da6bc9d21c17e4df8bf0c6c417de9f40e3d668c51374e1fefa5
Date: Tue, 04 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785831033
