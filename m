Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F021F0991
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772287494; cv=none; b=hMkDwn9D17PRvn7z5xiDeR1QnKAV054AVa4KY0Od3sDEfn5mUwftgeoCKPYqeWswmvgB6f9THwy724CPteBkGUvZEraMsZKbFr/IWuY2o34vyuYMfWwIA23UjWfJYGhUkkKlcOhbq0s6kwncu8dX1YUlFuBRawFyNPKTpEPu+CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772287494; c=relaxed/simple;
	bh=0e11xY9VJSlwwKSZQgiT+4QBNAoFUsTxaurnGmBQ4Qc=;
	h=To:Subject:From:Message-Id:Date; b=QR3M/LKFJkMe25+gBQYKn/XzCY2w6BKpstxQQ6N/1Td47xACGRKbc+8K2tGjZXoY6+4sjPSu410zsvgadKqYGOUlHrnzkOp1ZvT3TZ9oWJu4Lp6tRY9E+iQX4XtsovP9uqLS4WLR/vsWXJ+uv5N/6bhf/xcXyfA5DTZ3JaNa0XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrz3WCE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrz3WCE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A730BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772287493;
	bh=0e11xY9VJSlwwKSZQgiT+4QBNAoFUsTxaurnGmBQ4Qc=;
	h=To:Subject:From:Date:From;
	b=lrz3WCE7XpfnVPjaUjA4gB0zwm+3GovbopehR2Wqcvm+Tq5hC3+z/a5HGQ/rjqI0A
	 fmV2Kv/R5nKIrBZ7WVwMJGYQK4hWgjLsC7UWh1HStCtirUo0y32naDaBQX6K1sNv/3
	 PnsHMy7RdNe3v2zwpStjozk3zcLymRX2XaqlyMYcKM8LzHyJquJAclcLz0yZi0ynTg
	 4PQAgjq0fyeJIw0ZzazHCD9/sPdw/41YvYKisPeFl+XIIi9tVoDGobUhVP67tJ3rsm
	 I+MDlm8HX3RaRVd5yl0LhutaiQl07nlsu8hKa1ttwrb6k8mkuHhktNQ1uqSVUEY/Ww
	 YwaxMjZtv4r9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BFEFEE4EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228749358.15983.4420684201621888034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fb9593946a6dfc284174d5014402208dabdf789cdaf861c833ef0b0e143668
Date: Sat, 28 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772287493
