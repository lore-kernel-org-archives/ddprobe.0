Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE2F3F23B1
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784998834; cv=none; b=IKcV1HPPrb38pcLNQVo6+LTz+JISvQS7DHOoj4uXniPgZTzsb3dSfueZEvNQqw9VW0T4x5ORhMj9fR+2oGj+Tly+KPhg760TzZjFJyCwa0Gv61sTvNqa2fA4kJwd0EWKkE7atBsTJJMvZydcJGSPX06Y0LgtZi9ebtyZ8NkUAb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784998834; c=relaxed/simple;
	bh=zRvTaaYhRbweGR9oi0nXKsz9hq/bTbH0ibCzqNasOUE=;
	h=To:Subject:From:Message-Id:Date; b=MP92DV6nQnqFk1k7YKnXAa0ZXkGTIRZO3oQC2v6KvMF9Iyo9BeP0z+WH6yKdtOFBzFX4iI4XsD/fDjv7nD643sNqohPHclEPSQy00U/nIvXJtVndsnpG4Ndze1KIVrgJQ8RtMzVBOhm3mX/6k0RYPvZ5yo1jFyipP+CvwpfIiI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCW7pPjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCW7pPjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE272C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784998833;
	bh=zRvTaaYhRbweGR9oi0nXKsz9hq/bTbH0ibCzqNasOUE=;
	h=To:Subject:From:Date:From;
	b=kCW7pPjcp9rmAF7zRxQKWnBtOiADDSRCR5HhlcJjMHIPzw9c1X78ClwC8N+/XIEyw
	 lLd/vGK3lr3KJw9sou5CQz0k/onypsTo02eNrxYDNpJE9aokaSoU7zmfAgV203jMtP
	 n/VQ6hiab+YxUUK/txN2bALhRXo5Y4beNKCampJ+galXPkQj/+mygKwjp8Q2xrJq6i
	 2yf/lIu8yARwmu9cojWkOR7W2tVei08MUkJ0sQem4sNH6zuiXp8UoCd7tTWtzRG/Ss
	 siI0OWJEL2sRSSNMNKxUYIru/C5hg6ZRZ87dszSohtdqkD3002OP1qy687XaDxUGfc
	 SFeqaLi2AqmZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCAFC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499883368.6676.17519689406707001963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ea735a0cd570d0c2a6b284bd862ae9568e8b5e06c499f4bf6e2380d8d50a48
Date: Sat, 25 Jul 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784998833
