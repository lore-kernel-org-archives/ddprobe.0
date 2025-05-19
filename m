Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390DD7FD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747673394; cv=none; b=g9pq+NsuzIi/2OWet1hm0oTrUpzNrctinSQjnzoDqFai1pnFI/j62Sp3bT+dsKC9yGu/zyRswXhZgyKy87aJLXTKL4dCtBv9xb1hziPd6rS/BKXMvuvvZJrjQ9P7Uw7k+anmp2h9fEGe6ctAsGqEEp+rkkgehwnHjBBbZkor4KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747673394; c=relaxed/simple;
	bh=jpbSq83q9hUnediFgLsHUOKpjr9kzXwguS7GbPuka4M=;
	h=To:Subject:From:Message-Id:Date; b=G7IMTZtRh8leAscYw+mFt28/aLuksbO+Thptot8TQt5BJnedek8LvXKK0O9ZYQ/Iuj4tFtD7cDNlVVa2xJM3Huo4Fgz09iDTYcbbxWBTcJw7ooJL+wimER3ef94XAJ4mjdhXD+QNC0UeyAiIdX/hMKu+f4nbF4V979ZuXPe3NTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdFYAhyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdFYAhyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D99C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747673393;
	bh=jpbSq83q9hUnediFgLsHUOKpjr9kzXwguS7GbPuka4M=;
	h=To:Subject:From:Date:From;
	b=OdFYAhyD1eqYM3Ieoum/kPqh8z9V6INC7NMmWV7LLMAvUFUFpz7iHKHDECqcf/sCS
	 dK2HFyU7wY27Zeo9BvmMMHmVW5pGYcOzGxbLWmBFv695/ZutPS2RtDFqnwSn1etWYS
	 Cth8mVO9DCYhvLc56F86BNwEuPQVKFZoT5nF9l1CRTpu+OhSDqB4vX1ZFXJRzrgFUW
	 AkKLcyAePACEKidNritio0XQDpZlDj4WE30xvnCtsKUTngH69MuRdrCgtCrHqSj0mM
	 KIQMMUZYiaGf4zCeTBrck5W6TyK4lSPC65M3A6QLYQRMKuh6Du4kpq8SGwZ0j4Towx
	 N0pfQSzzdSAqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAFAC3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767339357.2317.8561756832346529654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09500b2eb036b819af73f39f52130d99648302dbed655fe53b1456369a39f498
Date: Mon, 19 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747673393
