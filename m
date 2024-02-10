Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BC93D0D8
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707569297; cv=none; b=NyYPliWvkif6dTG6fY1TOYCLzE/JKdUlEcCH1LK6beJkwg1M9j10K4ijctLXJngY/SxNn6xqXcfmUmXudfUlMNm8w+hu9vrvUyarFO5uOQgXyjrv7DCTbSi0ImSxFrQ5f0JV6b6ZNzOzv7GK/NnOWYKmI1B9HWXV9UxdlchUqnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707569297; c=relaxed/simple;
	bh=cuBTGgq2wOs6CxeJZRGx+Saa9JkGyXSjCTSY7BmwP3s=;
	h=To:Subject:From:Message-Id:Date; b=Zoex6YiFqhpQrRwl79sX50hmxfN0sDn0BvWRQ9OXrRlNbbo87Wi4iwf6+6gEZ89/rATintxWbUco/yb+6+aZ3Jc2Tei+eBMy2ghlvsLEcIk+973KZeJQJrKu1qsQaK8IedVCyXnPDYzK80teIMV8wYbVAoK/DDcgeVKSpptfKD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbqBbrNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbqBbrNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EE2C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707569296;
	bh=cuBTGgq2wOs6CxeJZRGx+Saa9JkGyXSjCTSY7BmwP3s=;
	h=To:Subject:From:Date:From;
	b=tbqBbrNRT/N6bhfzr0Hb+AbRAGnCQ3cchJRJ1ANO4hEdWm4kuiHDnAZ5HrPeb2QAr
	 l0ZPzKiaUKgOroMnVQAQU9py0uKNt3uwaDqJkgn6IdbUQ9kKB8eJtDXYYeNumb2dek
	 exFfxV1xb+U/9eXYelpAWd8RfAxYrnWrGeo0KSX9be93jSfUr3HX1xQClVbAv/slwe
	 h0esoV7XS6CqMrXJTxfkCHdhPr7USLpjlNJL0hSMVJmAlwteycJPTrZaoWbpW871yK
	 vfUAcQ7U111HbzWw1VRj3/t9CXRVhXHEnQ/PIjSRjDww2PoW+ivD8cA0y8hLbuMR5p
	 r471S6oiSdaNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60821C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170756929638.8846.864808242265910507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16a1fe354a5c104d14f493faaa6c236fc3714850182d00985b4495b27091c222
Date: Sat, 10 Feb 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707569296
