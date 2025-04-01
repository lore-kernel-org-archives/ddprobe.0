Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EDF42052
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743490194; cv=none; b=k0noG+PtUq/iD64VN9IR//Qjurpvo3K8Xg7H5s8rA5QT7p1dDdEXxRH2NVs1YNqPkJreQ0A7HCV9o45/LKbxfa+DBhk6ZwVcBFqZmYNvSQin5x43stpsWYU97LZcAD7ghj4CjkSm72myOc9dOygxXH/9Qb6hyOKrdjcSoXnG4gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743490194; c=relaxed/simple;
	bh=L2afrKoQdqLlPbBtNk9Rju0wEwKTP7ccMjmVZQNo/pQ=;
	h=To:Subject:From:Message-Id:Date; b=ZMtDCDJVG1tfcHVq4kaWLFpBYdXoP6x5+A+gaHsJn6x4yykw7w3obyzpd6kDRIpirSu+6UJuvtRuNmmaOo8WePd0B4EgthrQ/7pxA7ASSnOsGoMBuTmOi1zmO3fKEGk9oJt994HjkrgWjuU1hfXxnBNwxyjzIkha94aWW5+yMP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmbmrrZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmbmrrZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F09C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743490193;
	bh=L2afrKoQdqLlPbBtNk9Rju0wEwKTP7ccMjmVZQNo/pQ=;
	h=To:Subject:From:Date:From;
	b=AmbmrrZ12jDfTz8rJOTq1OlKxAv3qYHFpkLxihFLUg/J+mGY8OC8z71uHE7bDWxBc
	 EF9UNcy2vVU4UeTYjC4P91ls0L6WbuwzEaLYgYp5ys2trKGRNMfvOLa6smqJWAF7Ty
	 ud7l8ymIPTIt6bsWUFB8TwO28mOyUQmHBAm3LNIoHaWolbZrszRQRm5UyKRriNIhwb
	 dwmSMJ+FTy2bMRxh4pCHdLnF3NbGD0CWLvple0BK7pW0rjXZx3tV3/Tqw8Q35TQxI+
	 pZImRkJUlDoOyrWXNbojYlCG424VJGxKl9faFVUTQLMCRJFstxhyOpwZthoQESG7rJ
	 xbn2TZ5JX0wIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E11C36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174349019360.27557.12674735171226728799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ef68d4877e16d43a36c9ff3f805af78eb32c8f9b47a7c44883d31769532576
Date: Tue, 01 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743490193
