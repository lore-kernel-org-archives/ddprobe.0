Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F332BA45
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775401534; cv=none; b=KfYrsnuJa2AQZQkXL5t1/upG2OMtWct7bMTOATVFwDSNAv43f9pao2ypV6ul7I5ftMfwiukDakvm9zQBuKyGtSGrYH9v4DbIsBksQ8dFGagZB23MHLyIY7lUOx2hNxR8S7vEnp4RsXh/2YXQaTkZlQMWPj7XNYXAtsQubqg1Wjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775401534; c=relaxed/simple;
	bh=YZMk+tOwLaKhwGlpWMZ5l1ih1J4JAD7hkZu66q1t1pE=;
	h=To:Subject:From:Message-Id:Date; b=FGpKXDjj0xRKcGaQIRn5Pk7PFuuPY6vUwrqhOqDBwHHbGMi1WhXJV4a/O9oShR2p9aEhDPhHhXzN1dKBWHvR2QRuW7KeCRSdeGL8UAQHfIHOXCOEHNVjdi4TvpKLhBB5dE3+YIPA23ZsQAvFB2a6FU9x4R/m7ddzAot2oU6lWys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fePNXUlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fePNXUlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE216C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775401533;
	bh=YZMk+tOwLaKhwGlpWMZ5l1ih1J4JAD7hkZu66q1t1pE=;
	h=To:Subject:From:Date:From;
	b=fePNXUlbTx6v17MUf/Lvr9swUhuIICilox0ZmBwH6wNp6jqaK1W40fcfQ3S3WnLzS
	 tPGjommQkh8ah0o7sBFJ83Rc0WOzMguEkppYnBDu5wYEro5l18L9RqWyUixPtegdXf
	 TsIHBk7ieFsIpiZPebwJFixZhThMinfID0qn3fI4jNEPQwoJC0UZjJmAKQoyFcrd7b
	 KT61IVnXzTPtuQRJg2SIg75CucSfQr362hCTcmRCQcZOp3wkb0JLaEkCHu1bu5f2Q6
	 wTwjMhRAQv4b6EoMHrLgcxlZFsxDHwhRreOAOQua5lkl5Wq9jK2YZFI+UVdXGsHzW1
	 uqlVzUSQWjEjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B76E9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540153374.6217.10396927849711494752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad7ba82ee084337172cc52042a689b4f986eebadc68fcac49655a7db605990f
Date: Sun, 05 Apr 2026 15:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775401533
