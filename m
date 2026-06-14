Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEF7286409
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781421394; cv=none; b=hY4qdsR+E/6h7Hv+SBPMlHd5QRCUGkoIDaPHzuaWCAyDYArhgSI40a/D3ZiRfzfaFopzgW7b6mgCG69rP4qUlJpBf1ds5tFRwMbPdKCOt6IIUIWoFWhMmwO4Rng8VmJrKfAo3DBGlp+F8uE2BwiC8TN/sEwVGI+fyVnJqFsPY4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781421394; c=relaxed/simple;
	bh=9e9M7wZMCgVQgltdezqFrSgXfAdcg3zqUlnhX6vUBgI=;
	h=To:Subject:From:Message-Id:Date; b=k5kI6azRAQuqL+MxkDkdTtGwb1fcuYNXuh2MitT87W7tGkTOR41doYgI2XW9KInTHMlsG+w6hDI+sZRNl+P0QbPflI2Cl7kBMsT3Cayn86c6X3yDoD/yUrdJ4gv+L6rbnDAWSYhPDnvJ+hncQIrMEsyGYsrP4McFC/AYO1SkGus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipPwL9+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipPwL9+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8931C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781421393;
	bh=9e9M7wZMCgVQgltdezqFrSgXfAdcg3zqUlnhX6vUBgI=;
	h=To:Subject:From:Date:From;
	b=ipPwL9+J8l/0ekknYCR6UAEDXTO2I0NvxnYL1MXa6+sYnEibbeGf8my6V7nN3lZae
	 kg30cEvQEd1cqnuD335C4Fo++nXbCROexHt3CJnxpN8F1Zy7f5NitHwzYtcX7P8g7E
	 dvQfNh3xomVuT5RCsUwO8pj7s6nOktK/rGdKaNBhb4/oq5UYyh4StUvmnRwGOpV8U1
	 4NjQ0oyr1V4ZsSDV5xDngw8bzbYWZC5N3OaJEE+w/ct63dx5X9eIn9XBVjN4Tn7t5I
	 ImrLBnfMtRPY6LKsNDsX/GRrnEbsXzqR1HHGk1luwzPxBYlIdNjd5Noq/hlsSOp2mH
	 OCNnt5dCm/U2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D62CD98D8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142139374.9888.1505035447538053846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e398993dd2ee5e9b61ec8734cc3edfc01c7d066a496277ccaeae2268facc437
Date: Sun, 14 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781421393
