Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D66AD5E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737094554; cv=none; b=pl0BH6WXAaroMphTeIvPxMc7ldvXRuVjRB/YklzBloY08iX6gwfDPiv/UfAjKUnISTh6t0VDrGcl9zJk0CYbZZ6UgIAjBFDi/uMPOf0FFo4KFi4AkNNaL4tDmnvLPmR3/VGKzcQsQRUJQyBi06NtsjMnJ+HfiXfsr66Wi3WkOP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737094554; c=relaxed/simple;
	bh=woB3xXJ8HSATOaTKOzkoL9+t3gqJgAb9BBqRr1/LYA0=;
	h=To:Subject:From:Message-Id:Date; b=qevvnfwS0LsXjz7X1mVJWDL+bxq31YEfq0nao/b7zJ/255X5knLHhKpfl/1FWBYsPZ5XN+tXe3XWO2VAuvlItggLi13yTunXVHGkvanuE7U+erG2EQwxmMZIRpec8RuTW0PKTkYQg2B3NRxBX2SO5XInogvePLyF0SKXekJJcl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBmMcYqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBmMcYqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4B2C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737094553;
	bh=woB3xXJ8HSATOaTKOzkoL9+t3gqJgAb9BBqRr1/LYA0=;
	h=To:Subject:From:Date:From;
	b=qBmMcYqnU2FVwAF4AzMR+goZk5TWBbwHkFnAw+/e+iAu7BFE5n7WQXWnksdka4kQi
	 OjtrbM184zTqHVRrU+ecoK4zzjEZ1RvVLBTb7JNU8NKkNNGYwAAKNqzM+BgOwE54Nd
	 JAhng0w8szONB2XHyNguZyAG36AnWf2JBIHfvvUUVPqONrqwnpyAfbe1fz6GrPVa7B
	 c6fVgTzd12Cn89/QzDzbcTADjPOmaOcKNtXIWOpGt6TvOj2ZHfgeRFW07iVwV3L26l
	 UWCVDYugz6SqR8eNslnQ73MG+mKiD2A5IdAltMKViGCiR9q7KwkZdDOCN9YQw9ecSF
	 3TqOdtfJh3GJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99381C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173709455361.11371.7787886831068254003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064b5cd36b50626b983fd24d32dbdc0e380cafe7029d32467df496ea8221f6c4
Date: Fri, 17 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737094553
