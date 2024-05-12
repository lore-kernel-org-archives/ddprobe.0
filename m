Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B0751E49B
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715539343; cv=none; b=Sz2nyBk9kbi5FaBzfk4Heym4jEwteenJads+sPZPfzCJ8y4hU06V97856MOD3cCdLgO70iWA4GaCPJu/ZaM01rwFjJUFLQKRFCz5wml+UHH3LQ8uK7cCQ/2RZRj8rf2NwaE5R4kmC4QJ+FTBSVovQsjg3XhtXWwmFpr9G2ZpPIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715539343; c=relaxed/simple;
	bh=0DG6YSiHkRHvJIep83RiJzLd+IaErTuGyjF9jo+C2wE=;
	h=To:Subject:From:Message-Id:Date; b=bU8KjrJB8LAHgPCESAGRO0FNtjGEzU8y56FAHAb4tGImgigJOCVzAu4alt2PJV04heu/A4ca2MFKZW7r8InnEKygMDURoXN30ui4lOrdp+6r2WZ//pLorRzSvQfqsWe839vYX7RNTWmwWQs12diMXnQ6wdQk2yUNdaX5/h4TFpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6PaBDi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6PaBDi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED0ADC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715539343;
	bh=0DG6YSiHkRHvJIep83RiJzLd+IaErTuGyjF9jo+C2wE=;
	h=To:Subject:From:Date:From;
	b=a6PaBDi7etL81E+3v9BHKcIVsEg0EVk2F7MVEpd3rDuz7NOjUzZqvR/soKXtDI0Ok
	 Pf9d+VvHeqMVaUVCAFTKnzwxpVVgexzwViy8lTZpXZ74A6Y3/oGd11m8hPSZmVnEkE
	 nJ7OACAqJ8PtY49xqE6Z58350oVPgCsYza/z4XeunyWY0Njs61gxSRXO2HnQ4Vk8JH
	 FqTihEpAGvlNSNVk8M/PhsNfEx9BZT4ZQU74b18XO5PwlpM8jkp2ejLze1XASND/ZT
	 ABZXqiIAIyFrPAQ8UHcKy6HUcRV4aJRcLztYBU4A8hGRLEqpK+CvIENfdr4SC+E3C1
	 Uu0G4BX4Hu7XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF73C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171553934279.9166.4629467191580148847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67e656b6e817c6ee40253415c89bd42d64ec000e05017a758510607048864f3
Date: Sun, 12 May 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715539342
