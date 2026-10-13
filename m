Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 898BE5625E0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791928834; cv=none; b=g0LX7ltHZR2jRmyC092IF5JKp6HP14oPH6d0TXzXz9Lvmd9INh4BX8rOs19mMzFgKft/+kZQG1IeOMWysh4unAmbDyWPZlPET8k3dwvko6KE50+9Tq5TO7tGg1b89oACXkk4rrgUrPgv+5uolNQpgNE7c7OfDLeJitB5ENyBuZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791928834; c=relaxed/simple;
	bh=XKIes5f2Oho3rTlXv3/gMoNbwZ72qraR6NAV9bG9f2k=;
	h=To:Subject:From:Message-Id:Date; b=BEsW1Bd3gKnvgn3w77ANLMHUUcbxX/0rPVuRV2DJZPNRD6MAtI8gQqBepAPshNt4RlJUjHXeO1n/Jlm3CSQvPyFtypVW1YXVTqAB8D71T+4Af0eSAchysKLU0ZvlfrTPP6fh2bI5Pcp52xH1MIJJL/buFilQm5SFYIvqAiEo2lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1NlTsKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1NlTsKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE92DC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791928833;
	bh=XKIes5f2Oho3rTlXv3/gMoNbwZ72qraR6NAV9bG9f2k=;
	h=To:Subject:From:Date:From;
	b=N1NlTsKgwKVbE0X0fUSX+cNurqR/T8VPk0nWUPYIUKH0OQjBvjX35DQSH1Rxe1T1t
	 nR/G25LTD6S7GDF3GyLb6lzk/4uPoXeqFEjMXFGPLOjlQZsOXlnndiqMjP9CzXBmHh
	 WersFXBZ6SGQYuCR09yE5J4HDDxfndimvZVNE3NxM7TscsVIC1QMREs2/tKcHzyFcu
	 ICxyHZWk1UGzBITBTX4MR/V25Po0TJMUvjMkcq30E9rXIl548/CWrjdvpej2GaFQEn
	 4Veyg71eAYQO2vA1myAGMFheCmGeJUAWGGi/iaRAJXW5LeNaDBTNC2R2gdE0iS8WN0
	 Ds7KhLNZzOGsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA533CC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192883368.22416.4639174077915215075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceaaae4f7b80523beaff9465a17d63517488bfdfffbc222f97837ebe8acd1dc7
Date: Tue, 13 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791928833
