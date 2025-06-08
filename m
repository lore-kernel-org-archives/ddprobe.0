Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177C510FD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749348595; cv=none; b=GjNXSaWi0lRuWay6XVEo4zJUZS+OUUtXiw6xPidpVRhQ0pf/3AjNvEck65v32muFGbqs40+wSDCjkbGZvykDZtZoOLdyPpaKnj+O+iYUvmfiPxOTTua3Z23hsLHxXaEuIh40jG/gt3g4c1xOv40jU74OQ6J3ePFgeCg8sVWzv2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749348595; c=relaxed/simple;
	bh=FyCsMjZOEq21q2TF7uZbSI5Jw7z85o20bMFrgDfYiIw=;
	h=To:Subject:From:Message-Id:Date; b=GA9AeRCf/rxHoTe4+dQt3pnt291GAdbrBnp5UxZ8VLfzNnqecVlujUNj63ca2wls57IRjn0nW9pHjEsgl/D9KsIhZjKgcxbBtoCRHPTJhZGAk8+vhdFCI52n9jsfPnqWxKmL/z6W6L91Ef4FSanyFq4A+T52KcxzGv5FytnJLwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/c1Ly8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/c1Ly8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEF3C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749348594;
	bh=FyCsMjZOEq21q2TF7uZbSI5Jw7z85o20bMFrgDfYiIw=;
	h=To:Subject:From:Date:From;
	b=j/c1Ly8lkv1ofl8eXPBRnoz3P9iAWSIy0ZqV56Q42+WezQHiQb18j2Pr3b9UNOp+F
	 PeBaZFA0rBDk6CK6IEO4zeq5IrcScoZF7XVjxKuFnf636zs4TkjembsX/vzt4UoR9p
	 W76dax9KTmXpqFnMQzgpXOXyuRXz4BKq8CmrZDxGbCApbidlp9SHawrNWIbPv2kP84
	 nPdwyF84Rv+3fVtGCXd4XgJXkV/WFTt1Bg/MVsmojWbnYIElIvaVePpYjXnaNPABB/
	 po9/Y9Vjt3+MkJMIou73TPwQFxs0J4iJ0vTV4yrBWOOlUP7qsydVNDplwW/I5jg8Kq
	 EhImu3Oulr6Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF54C5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934859357.10730.17907257981910802905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc8195b9a1f593df3fa05d59182b222a74186c8b4c8858715f001db8a5a44f2
Date: Sun, 08 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749348593
