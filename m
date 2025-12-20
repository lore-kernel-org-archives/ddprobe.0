Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26902296BCF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766195034; cv=none; b=OXWKNiX1mEkDtr1FLN29ydjVgyAhvmMXZSFvMZvIk0RnwpnGI831uZvjwhduzO3YFMdD0oQf1iSFcCR72qHJ8Ba2vltbWXCSQ+Ja7BrkagVg7fw1q2++GaU1f7zHXNaO1F8Mf5lFsnrrd/aizK817rtJGrk8w4VPuKOPu7gsxSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766195034; c=relaxed/simple;
	bh=sufQ3W8ju3WIE2zeWn8oH1TCQRq1hvdjQgdkDAKFpbE=;
	h=To:Subject:From:Message-Id:Date; b=b/lQKPk+JuUdMQL2HFyIlKYGrWzBlZn4ag6ypaf624K2On/SQhXHAiGJmtOvWrAnwh4ujFq/9WsLiqw2coxUAc0Mb/2FcvaHBVusH8cbaGJnN5h7/QNRteWGaLB4h1ROCn9Zzq7wxTdKCInkTOgRXoT/G/qGcjMkMBNrMdjYOfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DL8OoEiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DL8OoEiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D41C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766195033;
	bh=sufQ3W8ju3WIE2zeWn8oH1TCQRq1hvdjQgdkDAKFpbE=;
	h=To:Subject:From:Date:From;
	b=DL8OoEiGgKHLuzLQAnqxuil5+lsOcZU3nOnvl+2FXZozr8AhmoQezoi1+pl2htcYR
	 sBedYOY/makFdflWSJSvVh0HHMu5gLqqbQms8qnmZSFlnYt7MKbI0NlsRZeL+OWLAq
	 i4uMUwKquZ6NxNBTkTa8fCGM9Ud3p72D+ZeHJ3F5hjW8p47X8qOdA2CTjjcTW2dZR7
	 5aLh9f28JRXUa/nNT4iuRn0AOPjEnjqHx6U7gxGDqyyhzHtdCm6Jrbmys30j2dWcGa
	 +9RpdMf86FFOvJtbSzgQtAO4JgZgMJEeNqQXmAzD53A7V1Bn6jXR2T3AlKq9DHBe98
	 /oqhYMtE2N2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A5E668A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619503358.22587.4363088917368185187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83387109568196cf33452cb43eeb4f2740c0dff1acecbb41e621e594da2dd0f2
Date: Sat, 20 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766195033
