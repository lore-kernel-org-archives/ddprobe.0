Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67C61A4F3C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774272293; cv=none; b=OhWHPKqGpwn1EkKyRLAEj9GqY8daYWh+l3jZVrjIE+i9eWLOZY6NF7Wkii07GuFxZv7E50DHpIgh0FRkB3bd5Auxm6LYR8dlECxB8bpkC3n6hbee9YvGPmlVJYablBpRll/SwhW9QcJ5aT/I8pgOltB/Iy6Tv2KbsU6l0SRdsQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774272293; c=relaxed/simple;
	bh=MKEkxODS+I26zZiiNahAU/DaAueeC31BAJOKyR5Uio4=;
	h=To:Subject:From:Message-Id:Date; b=SIO15nYLKY1NaOjQT8bT5Y2ZF4uQ2bDdGqLhDnjtqSNpldd9tXyyWL0ZLYl0k6LPU/mmBABCDo1BJOhkxMv2RTdD1fzk4JPPdtkR9vLwzFjGZhoh2s5Y8unxG1QMwcQOmcUws6YGMcHv+sg4puP3DWysqvdAXQXstzXd+xFfZiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKDWhO5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKDWhO5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01F9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774272293;
	bh=MKEkxODS+I26zZiiNahAU/DaAueeC31BAJOKyR5Uio4=;
	h=To:Subject:From:Date:From;
	b=uKDWhO5lZ5rdklmwp1hqmPSAIlmhaZU+dZev201EK9GiCYvCdUwlM3EUgnKamwgRG
	 eCTY8WRCpCTMum/fnEJglh7ed0x1/OuI5gwhMjUy8wrNiT6e76GrhaMpHDcj9QZove
	 NIv1fIl9A8EcdH7K28Oo1hegOtN4qQDgNfIVv4fq/IBJkBpgtQicGqYrb75QkHjKCY
	 gnY0sLNSa5LvzWO2R48i00ei7bYhgetU+OJq+OVFlZeSuqo6RUR8aYbxN5suy3zPXD
	 z8HazESq/71T6/pZQBkW5pLUo5PzYgKjrSV7BrG1bVgutj8xhNPUffGRkB2Mv/ak0Y
	 TY56FiAwmtinA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9214EF46101
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427229358.5117.14737484792314956616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c33765fa2288406264325eff45b12dc194c4381342b56acaca0c12861b62b4a
Date: Mon, 23 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774272293
