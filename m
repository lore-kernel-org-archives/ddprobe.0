Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D841B3101D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772381693; cv=none; b=TSD9ZEpLtNZnUVZAevCp9qhYUI1ixjJZ087sDSGQmPStlmF7nToddxPR2knz/irH1n97tc9OaMuDWJ9d8cC+XvUNyJZUN0Lz36oSgYOEasPm6tvgUo3kEy7OlmZN3ubnqDB6fAVKn+uBbAR+n8dJ0iMpaBdzfGhPaZaM7QMmn0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772381693; c=relaxed/simple;
	bh=t4hvB6Uhvlq3ORPKZOd+mOy/fT/qbX251udqzqFEQic=;
	h=To:Subject:From:Message-Id:Date; b=ZHC2B+h52c9O+O8Dtgb7ZevmDf5u/jzpydod6m+jZDcgClJJN5rM8PVuSevz3/VX9eKlJF5vMoA7x6zdlQH1H3MD/gMJbMwjRnJ6RzF4GRgVAXijJ/aEhEsGrmTynM8ho/oYhSuTsW6+0IWiIctaVEcFP+OM57ssHBPxto/uWZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rax48Z5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rax48Z5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D8AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772381693;
	bh=t4hvB6Uhvlq3ORPKZOd+mOy/fT/qbX251udqzqFEQic=;
	h=To:Subject:From:Date:From;
	b=rax48Z5qwmd/etgM658q7bdXtwO24oQGEKAN97vDFV9eiC0FczQLFgXWdta7mK1Kj
	 /VVSWBpOaO9P9Ja1fClxJbOURG97RZP8c3G5Y4Go/FiIJexM3k7mbJO1xvJt0gUXET
	 TtsbY8DKOxHeZXc4KwqiaiHtY8EC1XURAQ+nsYcxxyWv1Q53fdaKRNEHPUaIHRfBEl
	 QZqd5IQcwV5h3Xmj5oY2vC2rzSSqaS8tjlFfWvUNKeiFK4UDvWiCfEtV4PADR2gV5K
	 i+LeR1vsY+9AtQDJBw9GHoxFDH/u0sxsGX9SB+5IBG1YRtW6GPyJqJqjDtugK+Yqde
	 CJZai1Wu2teEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976D0FD006D
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238169359.9000.6660950001755184153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7319355212d28b41693f99ba1132000659191c2958ec7bd565c95df99802fed7
Date: Sun, 01 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772381693
