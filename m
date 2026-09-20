Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DDD3793A5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789922434; cv=none; b=jCiof8caHDn1/eFp5/clbfrneHDA52Qxxh8zq18I1TiNwYgkTm/eUcEO/CSau7S2vmjFNqdTgpUFIv4An0sbiF7CtnK2fTyR88UAyDQOlicHfFfigc4O+AcoMr0Y0m816IxDHnNGPgiL/9QQNulnOLr9cQShNJ6uw5nD2lPrOk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789922434; c=relaxed/simple;
	bh=Fw3E38HwTgSCfR0ArAFy3vjPk2p1hY/wnfKUzs5+F9g=;
	h=To:Subject:From:Message-Id:Date; b=Xig9DV/sVF7ZV8gLLIE2foXIKLe9R7LJBMvE3/Yhs8eNoCizSHMvC6n1bBN4lxf8/CZrxsbHtiyfMZpVlXPPcxiiJAi6MXdtv3prxS0+OstjuTfXtRbTox4yMTfLGG6SsCHbu3bH9qAKJLm27il3zp35+050EUC2MAq9SeYa4hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZ1FM9mV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZ1FM9mV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2411C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789922433;
	bh=Fw3E38HwTgSCfR0ArAFy3vjPk2p1hY/wnfKUzs5+F9g=;
	h=To:Subject:From:Date:From;
	b=AZ1FM9mVHdeEZSTeJ7KgtvfTu1h4KfD8k48/609l8nyFuWgWALL3DHUNME1jsJoUG
	 Ssc+uLqQxsD88GeIVIgLw7txYjFi3+pIoL+6bONvQQC0f6KXIxSCjU2KZaAzG6tPMB
	 6VAS5IReu0wBfGJ7r+lR/HjeUacoI5g+exFb05ZlT4x2Vm2o7LHHhbHK6lslIwkZcU
	 f69ROwQy6FF0oDCZacvkedLJzZAB3AxYvl8TyPNb+SMCZJ+R0Rvf7ONkRsVzAE1jGS
	 HV/OdNa0zKQJ0WHLiKOl6TfYPqisP3ZnxJssUtD6GnoMtPIniSb48DGb4haMQfGaFl
	 nwb5En7R97SIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF949C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992243368.6919.7761876300514228044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448d5a43ab305391c6b2ddec983ae1a934b72dd34ea45b6211ef4555d984a0dd
Date: Sun, 20 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789922433
