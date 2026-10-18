Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614B0352C35
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792351834; cv=none; b=P4UJcQg4ndmn8abRdix7hh8UISeps9XrfBGRIJJYfzPwRzsG0ziaqGy2LhAThN5h7CNgAU4sPTqMY+Rq3tNkSxZFtuh8/uBgyKowYzNN/z1wUPW+9DCJXO1mD94+dD/vUexqZtYKrGZpXBb/tpSXQOAHMMqsr6yV8JzrV1M4KG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792351834; c=relaxed/simple;
	bh=mKBqyT15XYa/pS8vfAudj5u7/+xSbE6r0y7ujAWV5Bg=;
	h=To:Subject:From:Message-Id:Date; b=uG1l2yzQYi2eLTwMOdmiLuSqzWDIMFLbIYKe4LMkkErM9GMaW0fLwjqwSPesC29h3z+qx0uZYnQIi4yiSLmipt0GR9XgYq1UOWOS6z03YJP6O3rDg7eVh8k6kiGub+FoRjg1wRI4ZZ/eHaA5mqKc8utP9fc92Z6+hhOlIe7iVNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u022Vx1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u022Vx1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85B0C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792351833;
	bh=mKBqyT15XYa/pS8vfAudj5u7/+xSbE6r0y7ujAWV5Bg=;
	h=To:Subject:From:Date:From;
	b=u022Vx1l1bap6C+dl2O4rDPVew0TvZ8kMkBqRxATOqeK+OkhWa2ygKIuSv5H+BEAB
	 XZYhnvdkazWFb4kWTykU0FwjsKQBLGPDSu0lOjxG1wlrLUD/dTO4AfWGIXqwzZDCT7
	 NDu+9jjktc9eN7V7MHvJrBfHlyUIvC5NYewJMP//WUSwN73PRnkiTivgVBQY5Fj2R+
	 gstLZ47hz8gfrOsYwi+J5oAgfZd1q+ZSr8OMQWKx/fNLqhXZ1D/Ax+Rbhw+ZxHaVwl
	 ykeQNwrptkjJPJpgGb0giXrXHceQP6M9U/bijnPjVdhL2aaciazbbTeTEVZxWea1Ir
	 5qzNHt7qdVBnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5069CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235183370.10704.11625079733710352336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7b088a679ace43b64f20c769292d6e1a19d370e99c0b37366273a782eafea6
Date: Sun, 18 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792351833
