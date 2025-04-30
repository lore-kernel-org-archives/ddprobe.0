Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E62221ADC3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746023994; cv=none; b=Vm7jBTDaJXu9jY23QTsOuoeyVGeJGo1QIdXbNH1DsKPgjSUjjOHKlpS0kSNDBw1NC6kBpmZU6qiYI3gMHozxNahcYmjZU+FVTCmj8VR7F4LWHuEqEb61xP1VE4Hly9cOU3+CsI3oETTT96NaDKwZF0dqod/6OcdRS4NDzj5M6D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746023994; c=relaxed/simple;
	bh=FtkjgQJWA60zqoYnr80z+ziM3K794fd1nXAD/s7X2pA=;
	h=To:Subject:From:Message-Id:Date; b=Vfl04AOo36UtTBAGbN0185UYH2qwnJF2lVIwIzgz+Px9wr4wC3myEIfl4dKgQ4xtJ32MayQuSglRTWsWCNQP+0SR4IW0QKoNJ9RlTXJ39cex0eMLtsHzLuOYuXbYgSn+I+NT/5J1F6b8dR3tE6ODMmIQdJaabzn9Mmpv6v+d2vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjsWc/M0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjsWc/M0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F276C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746023993;
	bh=FtkjgQJWA60zqoYnr80z+ziM3K794fd1nXAD/s7X2pA=;
	h=To:Subject:From:Date:From;
	b=PjsWc/M03yvPwNhV0PY1AUUYw0b7Giyc3X+79KeHMJP14ZOu5B9kc7zTASmF0Klb0
	 Y5eQm9MvFlehor6PW6brESrLaJ9CIvICfXVdihd80UZAXJTPLWuv9Mt58ePDEnjYgm
	 pwnSBPntEm5Ve4XtZFmf7MqGUkLXHZehEiRPI//FY2zg/Lf7F1PobLUNsoW2otVAKx
	 S3npwildpRElE1xxFZinmP0A5PajzvuVG31UJMhdYHmg6oDibE7zqS/4fwX2kPeNRT
	 pFwytH4rc7278+VB4SLcC8M14MU5J5J8aEiuv1cO7nUjqyLvS5kGtl4bSPjqiITdeZ
	 D2br6tXCfjWEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB8C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602399357.7950.13183379056962437752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f534f49c281d8fb61d8c7009fae54b25f7b805bca21bd304bdbf4baef56b45fa
Date: Wed, 30 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746023993
