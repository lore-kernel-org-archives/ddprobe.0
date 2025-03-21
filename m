Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AAA12E7F
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742535594; cv=none; b=rUIQI9KN6oHhR/Py9DkNbDP9Pqw9OH1kWDIIPgZx17z6XgUiqSwm507ILwdbpctWkLTGOhDKKtcI+LN558ywxmMWZ8B6NXHXImE06tmw/kvG/KWJ2EGVfzJPwk7qfvfEcRSvrCPIo8oiUm7ySJF9B14/yfI/bAy4xIBh4MG8gDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742535594; c=relaxed/simple;
	bh=tO2jnY+ASNXm0RM4w/UlgH1cTEDFPO1FV12Af5Kl8VQ=;
	h=To:Subject:From:Message-Id:Date; b=sjO6gVR3sdTH4HqoLnIuVKTDsUSQ2Jn4deHt4U+DdbGsDsKNobAR7aMgdCcvc+51jQj0E1cChE6klERJboIWpnJpWCYgQfpItOpgcIKI6yb4TqkyTjFt9p0EDOra33Rx1Kn3dpg8atO87JbwK7bLn5giexA6CNGI0XG+BcOMycQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRiaz50y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRiaz50y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE188C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742535593;
	bh=tO2jnY+ASNXm0RM4w/UlgH1cTEDFPO1FV12Af5Kl8VQ=;
	h=To:Subject:From:Date:From;
	b=tRiaz50y9cIb4A0nhkq3whKLwrBcz4NFpDZM7mkg1o8NDTKqvbRgBS1P7DOkv1UFv
	 deZKLwCIjpgFocgD1y/V9ddNk6VgW5lcVBqYOrWgMs44EV7rRGDx34PegrW7mUlfpM
	 OIo3UH1kFKT4iX9VXqhTani/Xl9HiwTFapElHC+7LmwWMnX/sEJvHXzsvqWxYq7FxC
	 7W6JIzeCKeTp2cypY5BhW+kk3AFcxuiSNDWt85nWjM0mbfGxvLcHKu3HijvBA1FSzr
	 lCxn7zG50PdHEmEN7LD2Q/jtGoprCgZFgOzMTy6Y1CU60YLPBUXPf3YJcF1vpTvXWT
	 UnOIQeeGkQYBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9940C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253559368.4292.2376668322828597169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077f1091f6df75120078d3a3976a3955327ca2744328a214f4beff095359de1e
Date: Fri, 21 Mar 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742535593
