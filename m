Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC0E3CE4BA
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777896454; cv=none; b=aP/I+fM+gDYYfK4if/G6VfQNue90Eg2goG3Qaj9U3V9bEhl6KrW2m6qi2kvPmxGL5NoAfQvCXRPiOpCvOXcZZHUMrQqR2MWid2yL4RCXAD3Jg9KpUEFA5arJxxxQ0RAD9lDu4OlML5ylMM+89Cc/V2uv61zY2hAX+zYIi/rU+fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777896454; c=relaxed/simple;
	bh=bKQk9lSM9DIGdGrlUm+5oWA4tCBMnqY7BhxO0QjYGFw=;
	h=To:Subject:From:Message-Id:Date; b=KwBvv0VMSZY7iQi0yg2MEy+H8+r9Dz7eyxqFYLL/sHkugc1cIEAbPH2Una4cV0MjW0PtX+h6K3vw5bZh7vp9BAWddy427Ek7DnwenSblgNe4JCg1M3/curJ9hLgiEOxy08Jfgu94JRF0alRY+GDWBzlIUnNPT6Fl5LPy66kgNps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UowdKLQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UowdKLQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F0CC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777896453;
	bh=bKQk9lSM9DIGdGrlUm+5oWA4tCBMnqY7BhxO0QjYGFw=;
	h=To:Subject:From:Date:From;
	b=UowdKLQWy7CreV8oP/J60zzVuG8hvz953uzC3yaN1YTn5JLely65byepX5aY2szXQ
	 rVF8X41nYohyhLsKAXmY5HJMlODrj6IwhjAXvOqxC4b+T2vHKnL98NZauGZnlQ1WIJ
	 FOAQqshAuLy97TC4D/qwf9A7lxXG4KWRpl74z1ESru5SRUB6S5JY8RIU1HD0mOYuTI
	 iO3O9jDC3SIHnWPHEALvmk720vcCbkveuGKdd4DURVy2VEiaaeyEQjUaR/vlO5PMU7
	 hbi0397YcZyJdl5DWDQpWyL1r9vvgJpgitmtGqFwA5h4EFEkldTtLHPqlxklI6Csct
	 Wk8oPRacisQYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97FCFF886F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789645368.15392.13701984218267083329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d938a51ec68a68effd78f20cfb114371bb0cccce5ca184b820e508853ba2e8
Date: Mon, 04 May 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777896453
