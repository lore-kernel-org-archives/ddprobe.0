Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE7C3C4174
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782991114; cv=none; b=uX0RWL7k6m3qvmXnYR+d8Z0sD0W9tqx6JxtJ+T6gAADKMJAVO29E25jvM4fl6vjLm1Z6MZeGBlu5aHKqQxIRhPswHGKLyHrIJHB31gl1SnS6O96tqHCiXZk5fOkgohMoW1ugnTm2H+KREcV7wqy2qBwbHUeSkaROaKBRDjnL1M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782991114; c=relaxed/simple;
	bh=/RvME8eoJT+717Wz3FUX6I7vYYSkDKL0AR6697Bxorc=;
	h=To:Subject:From:Message-Id:Date; b=S5XMXz9+sDxIy0FgnksqdwuY4luPJaFUXYksk+Qdc/iFwD0Yz8T06zAw21g25xUZ0Mf2+tqvUta1BQ3h6epSaV8cxuYBtGTucvqCxCA7L2TbFxrJlRy37xEe5XfNF+aaXjwx2IQI6rydc9mKecguUHDp9pg3tRDiCWxvnQkdbUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uM7ikWLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uM7ikWLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E02C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782991113;
	bh=/RvME8eoJT+717Wz3FUX6I7vYYSkDKL0AR6697Bxorc=;
	h=To:Subject:From:Date:From;
	b=uM7ikWLRyfoI/huldVXGAMGd93cn7oss2dRGAsuZ0yvGwLSotgQ9ewh1tXxvrMpM/
	 iOH+VwQ9HMmOqN/Iae1EHioel6mluOoRIt9ybNoJhBboYXgjr6YbKp5ljcj6cHbwiA
	 hocKdhaySnnO5NJBsRKCk5x7SXSd6T4GO9XlN+6MgauuSzkcS03pgWITYvi5ghFlSF
	 oy7x4C4vb37Macv4NYCraJt/gmLhyEw9QT9bmB0dRw14KoAHHYKe4WYonbrBBAlIlY
	 KHcO3NhT7hCHwICAVsyvRPIYhMRuN+phb7cV0tLDtgh4Ef8TJOGkRMKGkWK4M1G8uA
	 s0HDwYITF1Elw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5D2C43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299111368.27794.1255656007945562619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80bc21ee3f00e8f60e292cb3cb77898ae916016c48fc83beaafd616548315aa
Date: Thu, 02 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782991113
