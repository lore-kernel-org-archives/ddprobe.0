Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227BF1C2335
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753801794; cv=none; b=QR60NJr/Rt+dKSrHdHXTxKMCzV7i9mZD5h3EEKWuzcMmJYXmFqFhYwcdmDThDYC3Ewvt4+qbrxr9CFLFNF9Vxk/R/AKOmAq6dChrIjFQSJNsgP/4MvkDHY0yydjge7W+N9A4POehyVFXRjk49jR7Z9z13pMPVzArrqQQB5Qz6JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753801794; c=relaxed/simple;
	bh=HbU4zNewZDYrSVoXw/KqR0+J+couCYc73LNkGuAR3Eg=;
	h=To:Subject:From:Message-Id:Date; b=E4QTzeR0g6ebvvxEo5h4UcV1Go0/8bChYkRMIloA6B4iu8GsS7kX5CB7pTr3+royfSvSNU0zORZGn3WfS22gcLGPtKJTrwOk1nDMvdYaTgWrDmfBdMgkZGub6Jwoa7dwS/L5Q6vW4J20Z3yre94hzMIKDg8rJs7e9pnY7gxwDW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbevPLuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbevPLuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CC9C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753801793;
	bh=HbU4zNewZDYrSVoXw/KqR0+J+couCYc73LNkGuAR3Eg=;
	h=To:Subject:From:Date:From;
	b=WbevPLucJhOfZHHl/0a5gPO2NpKbcf0LdFSpNlHsTD+k0ple052iY66vI7rkx7n3Q
	 Ph33xZ6QChz36QFmyvQfB70Y5OqBi7df3UuiMUk+C2GCR45bErQQTpswXHXwinn6Lw
	 XN66aNHfFQQmucD8ysXVXR+oD9i8H5dsoc/cY7VOq6+6GOouTixRbhGWefxNvCYPAR
	 LWJ3xdDmiPiGdTfX8sVAowVPrTtbLomPMQsQZDogT0CjglxnRLzMQOxyYUkDc0XLbW
	 VpcK7wVPUj39PyYj/wflyy/NMdpiSI10EkfAdMWJroD5BD33t/PPcp3FNrCZw0/MBP
	 N7c0E3q7Uczhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB1C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380179358.31096.14402509046082010911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec5456aa3eb53a60a1660c10e2610f2409916953a9906878b470f479b03842c
Date: Tue, 29 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753801793
