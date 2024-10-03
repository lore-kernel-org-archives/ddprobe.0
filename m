Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFE91A7046
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727974554; cv=none; b=bsnZGftg7FUzxT4gZq2lkc3OBscET2EV5L2wfuFq9YiDDNYMDN+vyCVvOjJZ33gj4yTkRokARquUgPc3LH4oZ3PnNnwa/dsySB3vNwOXJnMekpLBdrBFgLxgXT52rBuoi+vByjs3/ezqDT9xSTivLTm/WhUlzLQFdL71ElgCAtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727974554; c=relaxed/simple;
	bh=lkR/yfGr4epVvXZzAGQA3W3vdeMOvH3HSsXqi5yV2R8=;
	h=To:Subject:From:Message-Id:Date; b=jb1TrJ9hu5os7kvtc9Pw6JGm7yav6OOTjfgnwmpZikoJSMhlqc/AgREQZNBEMzSSojbTGzbAJe3SjoCQf0vSg4YOk+aLcDm1wYlczJPG4TSfxReYDP86Y+9ZYA0LoQ4/58ASilleZ9/Di5ryeRGPb7XxQ9mAgMrK6Ej8nRwv09I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F36HZSiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F36HZSiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3785C4CECD
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727974553;
	bh=lkR/yfGr4epVvXZzAGQA3W3vdeMOvH3HSsXqi5yV2R8=;
	h=To:Subject:From:Date:From;
	b=F36HZSiv/Kl9oNppPbNtUxckc+Z28KNKRbQqiUJhRuJQ+8NkBSSsT6lMyWWYkGzCI
	 jRa+jEoqg8sIHdRQfG9CQDe0uSqQV+aM2/Tl7CQGHJZHdzMjdRTDQ6okGXV/9VV/j9
	 LQNQn4n7zDy03+sM1I4TQpml1y8rO+C7l4c96sDw2K4OGuRb2utipY90Pgay2sSHFn
	 83TV5hM/uxsUolaHM/ygeGJsWu6TtI8HOoZI6AVz4D1AwnZfpeMFqwhpDzOz7U1qn2
	 NKAEqM+fHYs66Btx16fpZtEp+d6ZcaURGYD4Y7WWHElZtiLU47al1+XXwE9Pm4/OlK
	 u38lw44sI6HyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D462CF34B0
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797455360.1719.15471790659828990665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c967353fd53b164c016662ac3533b80a8a351cdecf6edff4aef78e29fabc64c2
Date: Thu, 03 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727974553
