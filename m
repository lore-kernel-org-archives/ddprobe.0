Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2A93164B4
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773423294; cv=none; b=H0IdVvoXUYpKM+UGKcpYPRDyRtM4lSYN17xj+5X5zBn5105jIUzHVGtS4xs2zk8979Veo7F7c9VqZhYzw1MFf4yd2LGgtua4bJuscMH65TaeunKg8W7zJi0n06Iw99wPzsm293Jzn2W9fqXKnWnfOxPw3bESfa9K1h6L+qVAI7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773423294; c=relaxed/simple;
	bh=Vpu+4SBu1iJlqgOsbhDayDOvIJl9AYwZfQnthQyh9DI=;
	h=To:Subject:From:Message-Id:Date; b=ezBDQTcvb3huwVzGxp1+rbOyu1yBV8O3xP+TlORhRy3U577QlVVAly39yDwWW9jsh/+uRDFtbZoCZ9mMcereoyo7LgCK6Xv4YOyaS1gsC4OQFWJNBn+AfD5viJfPa+w8Mt+tPV7xBWWvVuURxZYerSuFIsgOX+YzW6VFzgWpHig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSeYTmb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSeYTmb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E99AC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773423293;
	bh=Vpu+4SBu1iJlqgOsbhDayDOvIJl9AYwZfQnthQyh9DI=;
	h=To:Subject:From:Date:From;
	b=HSeYTmb8u+dZe12rpRqQRcgr7wo9HBml3LOwQF0tt3hx4pjlrwaj+d73/btCigJC8
	 TGWmebIWyTCkzy3ij0dp19XFJawKsVKM2Fw8Zad+u/OayFgHEOtEFGK5i/xYTgtAlX
	 Nkyu4fFbWaqDJwwrIUQv/aCSOBeCAZoRLa0cj50IWYPRxTq28pe6QcgndJ736pDEBM
	 CxpI/NgeCyFb4foUgi4kwlwNg1Skek8txOz+KZKsSpdTB8Kks22tGr0w8d1J+/Nk0Q
	 MAg4RmQ3bg3AVq/mQ0kNgOAO20ZAz/IGGm+zhYFzy/LFfYHcd0VE08OpgTuRT/Auq3
	 R+TDcbYMFaVuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B9107BCD0
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342329358.7846.6110160886617445962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf594e24d78bf20b22b6cbc1053dcc3a899c4c7b03f9e01eff40f5c277e6ffe3
Date: Fri, 13 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773423293
