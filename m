Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE551FCFCE
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741124334; cv=none; b=mNl+WrTD9oWcgACuy7dEYCWbUSH9mjD9fXfxl3ZhEUFPophCGJhJWmFBMucjjIxnD0NhY1F2MH9AzOqk7MP4sKL/CSb7Lvs1H+gZtMiNs4O8TFW/ywtwMQhrXGNS3FMJjYgS1/UsxsMnT+YBs/qVyslB3tjTPb52WDDhUviMvOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741124334; c=relaxed/simple;
	bh=tqPZffoWnvtDyVaXe3BG9UqUjU7ITfHd56kJ2exCoyM=;
	h=To:Subject:From:Message-Id:Date; b=qrcEvkYvTGX8d7HuDz3LOKyMedZRObGct8AS6oKlIxhmsNPpmrBzlG1vAqbacGj9L9Yx8CAM1WxZUcWDwZdSCgFuO11wLNV+B+OOCJCNXQmkz7wlQBHK+NdMD5cuR3MxCFJL/OtD0+Xn0ibTrJf/NdcFdMLBy1YbtOOPTVK0tOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIHcR5FQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIHcR5FQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D8EC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741124333;
	bh=tqPZffoWnvtDyVaXe3BG9UqUjU7ITfHd56kJ2exCoyM=;
	h=To:Subject:From:Date:From;
	b=MIHcR5FQN3thbzdFUaprA5datDkXrWRQcWZi2L6wfbaRxpF+hb2mdOMltQYLKhYHv
	 eeGe9TfIYB+2J0z1FXCMR+Dl3Lx4ktsl7GfgRh/E6kJzZ409IbKILY6BNnoRZBVIHi
	 NBpfjB9gjgW0PgmFmIeka1hJ/JKkXGicyCOx+nRSaexfwUEODN8svsiHVmWphGm+Jb
	 C1FYs0lthlX5iORm2p6+f4sA0xJWg4UEi4VD5aukkWM9RDya+MQNhjL0H/kIDCJqBC
	 Xzjl3Zs/Rlm2IbohlnskpFhKAip0ykXInMpFFF07e1cnv84M48iX9QsckZ6jOKfl9x
	 zlB7OR1urErbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927EFC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174112433359.5772.11814225017243280662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c778f1eb27b86a36e719efbfd449d893f64ceaf55585cd5badb84b080597d43f
Date: Tue, 04 Mar 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741124333
