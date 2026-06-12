Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1630C34403D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781302594; cv=none; b=rudSUxT9r6AjKQd/X48GVea4R210GTWDjc/LktVZHk5DSI/cKT05Mi4Nh9IUHkajsHqqtrDsihc5W1GyuO51b8Dd3Ugo+QFmDYjJpzZH/dvXF80+U+eyFQtDX1xw0w8b7OJAF4CL60nAD48KOUue62UpYOmwJmrOzNvSmu4TKMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781302594; c=relaxed/simple;
	bh=qzV+rGTz2emw6fy6+goImf66quA0UyA2qc/SgBEXuCc=;
	h=To:Subject:From:Message-Id:Date; b=XAQVwUb9zDXbK6RuDoPNPlQvBv5NrO4nYltRIkw156Hyz7OBtXHl7kAls3lIExX35WmP0eJ65FwU++X9tKnPyZosNWBNHsbLtR/UWcVFdPYbfWL2JTFoP1romvrZf8jVgYu4NyTQT8wAlE7mYJFA3PFRFbSg9gx8ElwlQV4tiOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYYzCABY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYYzCABY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6979C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781302593;
	bh=qzV+rGTz2emw6fy6+goImf66quA0UyA2qc/SgBEXuCc=;
	h=To:Subject:From:Date:From;
	b=UYYzCABYXSXrHU6/6gh/d6y0oGkWCs0SnNu1u6XldEOikPiBYF0bYDK45l/miJFvg
	 d7mCAf36sa7rHvAr61N3Fn2eU1KfzuoWqE6QCnc+7kJk17avNgE2vx4kOlKa05EWQs
	 v9RdTOmExpbt9puXIUfDFm6e8A90DX5jz0PIQ8l0HZYEcKM1hGxzO1ePA4+lbgrRZp
	 cQZ5u5J5iIdYm/t6j3hIzolHAX39peVVV93kwsPtzS1v2E7TPubaLrumRbJfH1J1pm
	 C4Xp/g/3l30ttOp6Jb1oZsCYe7fzy0ofGfxEzFqfHjsWmO5awz6S+CWUxZdffwnEL0
	 g0ZqFt/UicUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FAACD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130259368.24996.11820179625765442049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4c365b04481a6904c47a655c1a33545468a3e624591a3545918625abc7dba0
Date: Fri, 12 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781302593
