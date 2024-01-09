Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084CF3C461
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNYKT1Iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92BB1C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704823696;
	bh=+X1x2eI5WuecuG9IK/7OWRzKu9Bqzwe5wHDGjKEzqlE=;
	h=To:Subject:From:Date:From;
	b=WNYKT1Iw3RWEnxi4lXc0HLgFCb0fYYh0qE4uPaLqHeteCM2YWtv2autdTuhnCKaJF
	 SBMmc7MEEM+IwJ6OSKQeljBqsey07GXabYrOjZDImJmmlgXlxsUyS0Ipk/dPNpz0wz
	 E+1C5H0Ad1ZNIK4AYWit6EHd5HDQzNUI/DpDy0GEBZI4+wA1ZhrIJD0Fo+wFw4TwH0
	 MjrsETqVtZnxUaxPVVoiQEZwkmAl9NQMYLsbwiE3DsIxBLF54CkjzID+iVT+ffHidh
	 rbs1JAZe4qajmkJHepANQhYSQ5mQi6C9y6iC4zewy36t/A15LADvEpVClfnHNz98te
	 q+inSS82SHtmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70DFBC47079
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170482369644.23667.1191338350613301799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab45430a3b52a4b5693569d16c6e290ebbb663820a32c829c4ad6f3e00190f53
Date: Tue, 09 Jan 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704823696
