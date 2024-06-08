Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587788828
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717879643; cv=none; b=gJDp+aPYFHH7OmwpaVkoi0FoB03UWLCGE+VzkD4rCoHLSQySAxNZIQu6ns6wD0eXp2McDP4GShjpqXLJAIGLCntQCpXQxIwlGVpxVBj2zZAsrwz5NqVDc/0Iu1c9Loq1r1QY8EWlmVKT5Q1xeDwSlaOxsASg0IH/7HunSFfk5H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717879643; c=relaxed/simple;
	bh=ntisEhAlo93hi4cp4zQPoWuitmbgKMzZ3jXWysSVcw4=;
	h=To:Subject:From:Message-Id:Date; b=ntaG2nAGvDbORbCZ9/Uf1VpsyYfRV3SLw64bIQUH0LV7ctm4fIjS+5GXKgv1IuJo8BKFRB3o+/B9a2DZ3DibgFOmGdJwNAcF0JOLGgKxxYq8xsjm2bK5FYSeUgik88Q3fQXzxEOPQw7nJbo2rh3ZC5hwgM8emO/4ZDnZGRXdPm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYaU9Nc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYaU9Nc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7800C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717879642;
	bh=ntisEhAlo93hi4cp4zQPoWuitmbgKMzZ3jXWysSVcw4=;
	h=To:Subject:From:Date:From;
	b=HYaU9Nc1+uxk9mHWR4Tm1L1IKX5yWPZDL+h09dUfmt82ekSLYPDfrvC0rMLnMEveU
	 s1C31zOo8/lxUTfPlKjNNp5ggUV0s6OVoQdYqMWE1ALulGLGjfEMGE1Svn5OMacxrq
	 wObTEBb9BDnQvMKCQkS9sHpN2UrdkxvwC+2IShm4WcqAbGM23xgir5DADDsw5Zedqr
	 8a9yQHd8SKKcdGfZLBsw8NRe+tdPwp0NMm63vEdmqfc3JopKKeJMuKmJhRXfprUO3V
	 XvPpNYqqtmQEMUbzB7UAIESNwUI36v4QkJyGYCaHoTTynez7ALV/2xjcHzNUZPKUOk
	 AZdO0ypElL0rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D26C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787964276.5386.812783032795323933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01e91fc286adc156fd45279f13839e761facfe6234fee78ac5d52446718c778
Date: Sat, 08 Jun 2024 20:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717879642
