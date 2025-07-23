Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2876E184
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753271994; cv=none; b=Hwg4jMQIjMEP246QQ8qAKFmrG7tq3VQ+Nh2vz/EsxcrcqsP6TFvCCYBvmi7vnuviha4KOaOTxSRWLC5hD319yiGbr/Cpht4hVjPSgf3INdl8SW0nbrxG7r/R0ePyQsPpy3e7UhEJO0V5hMjl3ZXfvhiAFYK3w06st1ccQ0C+FCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753271994; c=relaxed/simple;
	bh=6boBS4dp6qtGgaO3B8/06cHKQleBCbkksjo/6KCa2Uc=;
	h=To:Subject:From:Message-Id:Date; b=oFTXctHtDC6YlMnS9oDUTW0oywVVTjhbXdlfb7WhbR+fQPLRfqSx1cW4L7s5+y9BYTvdX7aQaBKUmQTLiZS8SrnZMFa1uJRCqvAZm561b+TwqAmok4ofKdBgJ/1VpbelzG7Nq1iclxg0IfPQR+ZPL5OHS5VYV2ZfJRKuk/UxuLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLrtnYTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLrtnYTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1462C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753271993;
	bh=6boBS4dp6qtGgaO3B8/06cHKQleBCbkksjo/6KCa2Uc=;
	h=To:Subject:From:Date:From;
	b=bLrtnYTpnYDDMoRRsgXn7qB00GE16ei+92yJuEVVfqKTfmbXkbFfAPuG5lLPJKU9i
	 QH58plE9QCAH2O/kXcH0aRs9wN+/yU8yZX8l39hRsvq8phCtkPqWCm4GygHdzDT4rX
	 YKE27ekXtNvpGRrctz67mASffpttqF9OLgwmXsUBdIeF4EBJKBcHbGg7VsFXpJjKMs
	 qUb6pIr84uT44s9ssxOLjynsUhQha3NdlLvdQRelnOKf4RPNe0U8g7OlOQB9qMqOJu
	 m4th7UUxfzyQBbLbbVJEKhMrsHzlf/THWWdJNu2Lb6ID4ytncl7UzuKEAaVEmJQU5u
	 l7uDf7uw8o7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBDC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327199357.7876.3121925078987487302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b627ad6fc985892104b21ca662fe133c93fe68db7d7a805f3cc455b9701455
Date: Wed, 23 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753271993
