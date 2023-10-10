Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5933F154BB
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pabdt2ls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53F2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696943228;
	bh=61dXoemGMt1mEcgCYVd3qVYdxyJLBU1/ZUZeAdwJwmU=;
	h=To:Subject:From:Date:From;
	b=pabdt2lsUS8T0/ZomPxIP8oV1XcgLrKrhJ7SzC9XMumhOmvO/RrW85a2iERMj/APQ
	 q7F/q0Wm/VWi7Shy9nqVMapIo/Y8IEEuSCgmnQ3zzYe7SN7f5QAJki/i+WnEJAeO+z
	 4qoHLZogoQiIwoGYwTFNcQqT1zFDyPa6b1YLMHaOAewQbL2rFNUO3q19i7+OT+l6+L
	 Sbe3wXJqnIl51vQmBIy1iRmWKaE0ZbZtlNprs8BK0JhGV1dio0qfiuHPjt8wGRTGNu
	 WuVTzKMem+j26dpeY1ontuZg6JdlK/yTlMBKhvKOb88Q9AHUBV7XshFffL6fujyjVD
	 bUXD6dwkMPrSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9450CD80C1
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169694322868.29234.15871669869435563656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3eafccad0e88c4341b5b67a726642f228aaee7809320e00c58efd07051f2828
Date: Tue, 10 Oct 2023 13:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696943228
