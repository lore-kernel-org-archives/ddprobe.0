Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051F61B86C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774107294; cv=none; b=g1xkb4+X0sP2suSlPf/28iCTQCcog/c0JFFvwMKS2MayqQ2ZSgbIRacskIViKx9NHFJ+3ljyv+5+WLsw47wvsU4YsEcFeadVhY9lnBhS0qge79GjODjfBCcjtwfpR7Ug5O+BZyZU9YegevuRo4b0JjPkWEDUocW+ZsWb9Hnco1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774107294; c=relaxed/simple;
	bh=jOIZtlmM8kl8nJsyTucDYobbwSC5V6cSusqyj+J8zJ4=;
	h=To:Subject:From:Message-Id:Date; b=BG2u7Gnvbjm/Ed0KI4ZjdZFJkCrDzH6tR4NKr8TgE4w3V6revXBOpNzMOLJooJhamYlSNcpPzpeBfxP95HYMuXpjyoKy6fiiaFs3DL0Y0TUDbWrIO0uMLWjrQj8zWL4Z10bjCrk4jwiSAS5kker6r6pxB1+g48hROZ5h4dcPiPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbmBP1nM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbmBP1nM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DA3C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774107293;
	bh=jOIZtlmM8kl8nJsyTucDYobbwSC5V6cSusqyj+J8zJ4=;
	h=To:Subject:From:Date:From;
	b=YbmBP1nMsK4D1iOToQQqDpyw8GnCC5/hb1EZ+CQwXNT+WLMj1fhqdK9cUaFsWnVoD
	 rVpRSXt0WyacdFrFY5OLy9YvbRFtqLMt5vLcYG8LhrMpkSB9gwHbhdtKsHrA2WEN02
	 l/1t+LEoH8GcUwXY/D4B7rBrQEGw/z1l1hXKinXMPPaLeS5VZqfAjPymURY3l5xYJB
	 HxQvjAcyHBhAQsViKp648U1EMueJrem9hbrl43nZqQ+6l6gDoHHhbxjal17pG+yNl5
	 cjhtCcZIFhtB5RUwMeOBzd0Y3ABBsHNA9DuDCjRkQGL938+37ZYVSqpaoxKy5vaWtL
	 P37vbC+3t6nOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178E1094480
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410729357.5582.4766826601151239292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a186da05b017312c597f48c706410769996e390b589ed0fdfbf7a8914d72cd9
Date: Sat, 21 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774107293
