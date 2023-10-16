Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5649A8836
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 06:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QE24Avaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEE5C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 06:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697438228;
	bh=Fh18jRsgIXOirUMxkwYwJqvVdRjkcZkPzXbsPoEOrow=;
	h=To:Subject:From:Date:From;
	b=QE24AvazvbqxVOVimjotpTgSwEdHW66XZ4OM7riCxsbpFYb1Cmh8v8h5J0IDxlDlK
	 paor8zAmii9+CbomkUVO0br+5HAmvPr+fQVuLEY3PTlwrV9sOs+I9YqMp/nGkpSzX2
	 W7DmeAGQoYtEk/x1wFwf3hDUTXzu9l7WraFoz8dBVjozvoC7HDflcitdRldEEkABAH
	 unzmxw3wYLsNLwlzA5GmuUVg32aK48mMmWHZgBOfH8WCJ16NQC0kx8wUu6TwDQA1tx
	 ubdXYYAONKZuZEPBhmCawraXpfS3T1qIyuoASMa24Licn8edJEXLa5UXDkBvsqD73Y
	 9KgT4YxaCoIKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89C3CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 06:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169743822868.6556.11555725020983415714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d0964677b99cc7fb3bb0068b7c54e4dd272d5caecf3343ba692087d071de69
Date: Mon, 16 Oct 2023 06:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697438228
