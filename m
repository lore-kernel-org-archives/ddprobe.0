Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6EC1E7C12
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754029194; cv=none; b=g+WTHdy8sLccogtH76OfMAdA3UWeYoMDWnDZBMfjgVQVXKV6eIipCW/hbzfDLfukzdUn6cIUkVnHubq5kffUvy/aQcsDSKQQXJbFLTjRZXmruZA11CeHTkIJ92zzRiwsqPbNm6a3C9ZEnp9euWbL1zlo/zUZAs/wmSuHzGG1Uqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754029194; c=relaxed/simple;
	bh=RzCAgu6rQR8aLDkKDAbuoT7vATbps2pQoi2FhJtHt6g=;
	h=To:Subject:From:Message-Id:Date; b=AXkRu1d22ohQXx0wLthDLSAouAXrGZabGY2XNqPgJCdKmvNlyo2Oac2uv/fs8I/VjvmWbbM1vl4XuyDzk2nSqQezEW+qyWhfxZKcwJhO7UDP6sZHLq5Ck+CKgPZT0MM9Z7X0l35AxzbJRz24VvjdV7Ml/U2uXGsaPr3HF+DRJLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGmPyMsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGmPyMsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89BBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754029193;
	bh=RzCAgu6rQR8aLDkKDAbuoT7vATbps2pQoi2FhJtHt6g=;
	h=To:Subject:From:Date:From;
	b=AGmPyMsE41o6THi4ejBVrNAA2EVI6RJFXPw/DYgerBExwWWQiZy+vRq/b8FF0U+2n
	 P8DVeBX5d94Vti62ylCQTRKXYlkjcKLmzTEXjUu9uzsSK6Yf3eSoAQo5Kok8mQKfHw
	 Q4TqCYzGbFrBEjjpglIKZhiEzTkEmhIMax0Hw+128kdwXcBdUw6rtaDo/KYH4XEoiE
	 nUyx0fJ+GerBh3KGFYEXMc8E+yZ1Cssppdi4EUdbY20sCxIMYePowWPng7fZNf8Pn0
	 /KkdTNhQYeCEVQtVJidw+eYfsDQD+iR2ENOcYOPkCt/Y1qOKa4Us7KytgC0Zjlootn
	 wWHUt0NOnSW2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9698BC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402919358.27222.5455647440913611511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279118b29b1a813aa5af711e479353de13510a2ca5338f0798beefc852341df8
Date: Fri, 01 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754029193
