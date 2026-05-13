Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A26541B345
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778677834; cv=none; b=mL8vdYnAzDCK8HucXMwsHutp0icLGtdIJXDNb7hjmMWFpjiGerkiyToBP3kYpxPImIHUoedsGjnTfZL2tbf3CbNwfXKd1grlTqadZabbJaXDe3o3QDSBnbr8hHnusDcjJhcnNh/3H/2xm7eX4kRh047HDnloSbLvX06xiv3TF40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778677834; c=relaxed/simple;
	bh=MQC+lvrOzxtBrbz9lJX9A3VYq2GE4ILf2HUJODgn3Zg=;
	h=To:Subject:From:Message-Id:Date; b=jbzSZPMnW1ZWdarnc2TbM+xa5Foi17LGDtT3cRZJlK/6+Rd0HysNdYF72OQ9E0kzfdBUq8OzJ7nTVYDbSn/C1z7t4Yk7U58bUfyctSAcM4imjiHS9fX7otmNLAT/noXxK+eRRJs94N2cyyWh2OlUHKTnSpLiOw45KG6+kvinsAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5FQyQ8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5FQyQ8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6FCC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778677833;
	bh=MQC+lvrOzxtBrbz9lJX9A3VYq2GE4ILf2HUJODgn3Zg=;
	h=To:Subject:From:Date:From;
	b=k5FQyQ8oksCXF5S8o9nWexShiAp+Y8LUaVNj0O7GPa42poo6+7TCjwz14gj2Tves+
	 zizb3hu4F6OXVsaAzHEotmsbF10+ScWRKyv+KH745PYYy6XdiFG3K1U3sN0u7mVZCo
	 MGrPNapiD9XaSQdR2wsZtQtRMxc8s0NWQQVjGaKSTHkwJov+eAZCLsme4xcqjvVckP
	 c5sNGrr4dyoU1TK/I2ZNSogyQykzfxObVHZLfC1xDedZJgCULnAVx5nSKpe1BK2sgc
	 /Et1EpG5EZd1c/2A+6h4gNh4unyIfVjdiW2/cs27kO1R3yvuCyf7HV7Keb4uoOtyBe
	 lb0Zm3QTNjXwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEFECD4F24
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867783369.21597.2898602318036148355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d241330768527e2a5828a9b17c223404b560b62222f08d17cd7364a3763d9f71
Date: Wed, 13 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778677833
