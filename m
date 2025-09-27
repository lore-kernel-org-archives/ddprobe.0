Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4718F155389
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758946794; cv=none; b=N5I9r+IfBHrVTaWvE82BfnEjMqFyq6hCrj4lM2YaKPs3o5Ca/pk0XpfY0gFo6eutKw9qAQRZ57IL0BpwhwJ/vJsZ71XJZv4vlH6flKRfIht6d8D20j64JUTMwf/ZW2TjSsZ/nz4QHcS0Wj5dV/ISr2WLcrBIr7B4StDvIfCOFNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758946794; c=relaxed/simple;
	bh=OgOqMqYEayau+h7s94VjMXrtmFGSAIMZEambwfq5sLE=;
	h=To:Subject:From:Message-Id:Date; b=HHr+IziRBi1TK+7XxA14kXfghQwukPnHYDaDWyKiuEJonmWI1e5cNGLe5pJMisMlgePPP4KQf92BhbnaO5U9fO646UfJtPDYZ0KPIhnAS+Xa9bx0QFAH8SSA/M1gCifU4PiaEC98OYU4DXhByC/DYfX9AmB23xt0B4yvfDxKAqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwWFqhyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwWFqhyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B054FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758946793;
	bh=OgOqMqYEayau+h7s94VjMXrtmFGSAIMZEambwfq5sLE=;
	h=To:Subject:From:Date:From;
	b=pwWFqhyl5RaDsPMYpIKo4kAT+9PyajezZr/j5jdyTTC4XNf8tw8QYDZJ7ggYlqKFm
	 V1bnMbonfsg5wFn9xm+V8hDXaF4TvO21ltE1PlLI0lv6PPgGyN/H+u5RriMBtjJTGP
	 LuiN4ahYqApCSeh6ce3SKxxyGm+9vOtDRN0YYnjOtUkbaTTjPT5SWZ0Kmp8AbHlM4+
	 ddkB9Plv056pu29uYKEJ839FtaNSPt6WU/PjxC4O94TOizb6ZzD77mEtWyTEKSbZQx
	 Gb0ss5z/YEo8GSiZNryFr/mhloEOZqjzmnUHXKBinD9vcqDP1Oa1tiM2H+gBLSqboi
	 2rIuYzXLPgDzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ADACAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894679359.29101.1246606958018885752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ecbced9c66647aba6e61d7a670ec210ddfca0c72675db85817b29c2cf8f8b5
Date: Sat, 27 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758946793
