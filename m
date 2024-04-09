Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B95613B284
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712686697; cv=none; b=G5zpAzJ9lAoi0Qjyt6TW6sDe9F53bRGv6yN1kZH9aLmuPD9bsO3dOEg3hdg6v3+M1qCQah7WYBpXGWxc51DtAGTpO9j6AypA7BZzOqg33oGlvBs6OuMfV5B3pLpqLvaxYs41BRr2Pw4Wh0x5ezJ0CJxXCAKzPUdczmT11uDvJ9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712686697; c=relaxed/simple;
	bh=UntYmprz2nSzqEYZRXnLht5QsvQ3hs7fsMtXfEXhhPI=;
	h=To:Subject:From:Message-Id:Date; b=JLJ2wsGPcsIHZMMkpzdk4daf1T6cgtbZN7+VtsNqtU11+hLFPv48gm/OxAZyjyDc6HN0zgmTsQfurOc9W1kdUcjQWoQCi5cPfn1e89lwpr2P/SzQ1f59xgAuEABWZCVbILfbTljDoYJS5AktbKxJP43UNoHf/SVPZUe/ZVIrUFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGfqW1b5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGfqW1b5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D53BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712686696;
	bh=UntYmprz2nSzqEYZRXnLht5QsvQ3hs7fsMtXfEXhhPI=;
	h=To:Subject:From:Date:From;
	b=uGfqW1b5Eg4WdIzgOAcHWbHA7Q9ZqNkPbjQJULYUCCsQPSol5gw7iKHar71KfM1Ss
	 oeNWgrh3zFM4aAnh+zXyKR+yw7kjsQv8BIxgWRLXt8h12yWYjh1w9YcTlX+GRLzsey
	 OQhajWV+Y4h5YgTMvn8J7YuAexiFVvJQKh7pSUisuzlaIS2yRfjp9MSfnJc6Byeq0z
	 JkVDN71qtUBQhKWmHlpfbcsKM3Uym7O5UTzwoG6rye6IxJh4x3fEhYDeGbDwN2dKPd
	 OxjOSid5kZ5494+vOnQksHEdJ7/iKRTlCpvb1o8hsIjrzt393gGzIvXXLUb9ya/kyD
	 Kwucj4ZOeFlmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80471C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171268669649.18160.359094274435365998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f52cf095656610ecff7ad69f84afab25d1d2dbbc090cfabcfd0911da8a41d6
Date: Tue, 09 Apr 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712686696
