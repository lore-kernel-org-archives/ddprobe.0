Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12F2200D9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711822097; cv=none; b=Pkj6Bqlr+ZA2AEegn71PeErHk9ddnS76Yrgu+0A2HK3KTVU9l1c7tOyVlt/WTqkB16cLYM1UFNWA+cmIYygUvfL5aQx3r1aKtsrgUNlucD870kQtXlyf57+fPzhLrAvRrRZ6DCvEsp55b0J/IDAa2jeFFKLqIz3lSFvjj0fwbxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711822097; c=relaxed/simple;
	bh=LZ84hQESLt4VOY/YKPKkxt2Ktwq4CTBS/QpSoPuLPCc=;
	h=To:Subject:From:Message-Id:Date; b=AtFsiCrK6p+U+AZKUv7oYemlv8qr/LBXayz4psdga+IXcI8v+8tBLk6ObrtRY7KW+r38iJhAkxAE5zHSnsRxVa586AifJleg6eLJmQhQnWXfClZS1yb06VuwaTsHx7UsGi/inmcVoW0MPFuoKpFrsdqzbcEWYUDMGvBd1BI9RaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUIjivhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUIjivhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72601C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711822096;
	bh=LZ84hQESLt4VOY/YKPKkxt2Ktwq4CTBS/QpSoPuLPCc=;
	h=To:Subject:From:Date:From;
	b=IUIjivhKQtcXLRKflCeptfL3YtFaDa8Bo1HXZo69FWroowybI0ygE2TB97wCMUqGX
	 d7WwaS9FlgnoOWfadQyDZ5UIBqZxpw/a+FEOJfCZIm3uOS0fTvD5BDJgP6kKLqRbFJ
	 KCj0s+O3RN7f009CqyFJ0QahLxdfI1sIS9tk/0sRbIlI/oyAjKKg1fJHD6PU7DZWrr
	 brr2ZV10TaKSR2cMhwRwcVArmmAJ2XqzE09WWFafMWKWtBJkwX7y1RTn2OT5LDjoZi
	 v4aFmC4HWoHNiDZKaumadFpE1cndfR8ra91f4tdkWAJgIxgaE8NXct93rg/7SeyxDa
	 cWc/9JviQ9uNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEE7C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171182209638.20136.9700636891522057193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015b91d6f1e8658cfe90c883f114c4a1c724b9434f26f1618d2a1e44f49272db
Date: Sat, 30 Mar 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711822096
