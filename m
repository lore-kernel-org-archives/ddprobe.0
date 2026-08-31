Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C69207A32
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788152434; cv=none; b=CW5NuoT9rvEh2C7B1YNj1NcfJJKqkrJXbQX2N/a9MCyA/08hrPlelDiQOPmK2DHBZanakSuQwUZxGjwa1mAnKAQlzdYRXoa6yVzJ11Lf5NbH4M/Jf2m6SbwW4ulMTovU8wgNQdJnTj8k6LqTDMXfVSS+U4h+J1vldZhZ2vem/Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788152434; c=relaxed/simple;
	bh=zJ1qU0Yo8H+Rd5kaEpeOeXBs6yYVjRcX++LJIq2f6lw=;
	h=To:Subject:From:Message-Id:Date; b=qK1wdKwpIWMETqT7kf+dFyinXLfdzmV1dcGWAASpH+v7MUbkHMvthipk1615WxgTcZ/J2ngU+1nSKW/6+3n8WH8psXflMwYAuHIQiy52iZX9kPl+gaZrfNAQMxZuAS0nGzb8t9ub56oA3OhaJUXcl6WhzlCEtCY7nlxX5hFEiqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRM0o8dA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRM0o8dA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27B6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788152433;
	bh=zJ1qU0Yo8H+Rd5kaEpeOeXBs6yYVjRcX++LJIq2f6lw=;
	h=To:Subject:From:Date:From;
	b=SRM0o8dAl7af+dnOd9GQ6RhJj/HojgZotsjk3fjs+hN21hp7w6s7Aud/cZlQlVOun
	 Zjao7rJwAJpv0sVFE5Jlt/fzyxWk8taNhz1uJYSmR0vPxv5dGStFh1jE5STBSSl0qK
	 K/xo7G3F3Bhkqc2llbNS5yS248lWJotzAfDNi5QtYJdOguo2dCAIskGmiwpQ5H4qBK
	 c5ie8oGvdg7JddPwr062CBwKR8+1DP4IcCoOPf7GcWIwfznth+cjDwO5fVTVNCwdVY
	 fHwhA2TNp/fUx6lQMCkCykdwtzzofk9nJ6KnRcrawN4ChABcGFrAuyCNE0yOpwm4Di
	 xhRpzBGmPmo9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAE0C61DF0
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815243368.29624.7358521349210377359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90fc4e6e384a5f1c23e5f755681701e0f2faebc2d9b1dcaa79f4adbda2fc683b
Date: Mon, 31 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788152433
