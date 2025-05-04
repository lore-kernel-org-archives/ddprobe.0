Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8A217BD9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746398394; cv=none; b=b+v5xgDtakvCp/JG1nvYaMJRo6LtTbuyuPphM3b0pkx60rCncXqMZl2yDolAhpuu4Hr5K3EWWWjDhslDCHmOw1U7iHJU3gIJHxQQakJmUcXqrPJb09aMg+5zw/g5LxjQBkYjC1vHFtbTU8AcAAKDnv7wT0wL5SVXfPAY1nDkZGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746398394; c=relaxed/simple;
	bh=N9umcnSgrkrXGtO52W8V6e8NHW8kXgBRcAF0fYcWhQQ=;
	h=To:Subject:From:Message-Id:Date; b=NtJ25eH9CyUze14iXkH5L74tCKXLhQIPxcaEvDzrwb99zyhDWyuu/Q77OmEULWJhKa1BiTbdcpuJpiap2iyaT9zrCpfj+Atm5rlvI9vRaY7Z/7k4D7Om5KPvJAnm3ne6mbiyjJB6C4oRjcs3bHfIZ8d9FRqDElAQfBWZq4JjIHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knKYpcG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knKYpcG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4583C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746398393;
	bh=N9umcnSgrkrXGtO52W8V6e8NHW8kXgBRcAF0fYcWhQQ=;
	h=To:Subject:From:Date:From;
	b=knKYpcG1FlKwxt3MFnlwt7FGXgoKs2f04QqaK0Ax6/THjTk4Rb1i30SIc4PiYOWMC
	 imFBCSWEBhvzwrlGFEaF26Avs8AzHSlirsOV8fYRQ33KYakT90CJaRD+OHtARz3J61
	 SEM/QCkv3Yeiq/CREqNHAgGRgy3fJJvKjjvr7IfRSgKYvqtDtBMl1W52bN0W0PGwFO
	 BqFB4tE8A+KjA0aE/xGSTuXIrWUSzqM+mrve2Rn8T4Plm7iJLOlQozUO8NyKJg6Fmt
	 xRFPLLqNcUzGt4VmFe4L2bvccmGxVugtvF255ldl7XvI9h1mM70kP52XOD8bac49wW
	 Wz0lH1kOH1sZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E98C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639839357.16032.18110415418728499511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee21d593b391a6395fd12dbfdd267bf978676dc527d072d9d7d78e2bfc81f00d
Date: Sun, 04 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746398393
