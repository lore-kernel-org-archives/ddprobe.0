Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55201878
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729347353; cv=none; b=lFrLEg2uDaSOhsZlJs4mINFKrSqAi8uRX5jXqo8gROqA2Z7bFhQsUsdsXqWGrBe8XLot20k5rVP5Ey9Zo+UWiSsWyMAtoZDoW4yC3RQS71F8Gg59ul6bHuRS1unr1v6otekv4JEInLTw1zVhpDmtXLdMf+tPIBwAnUCZGND8inU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729347353; c=relaxed/simple;
	bh=NNYxVFZEknCZGaAEBsvMu3VMXkTNjQ8x7WPrVsUzwks=;
	h=To:Subject:From:Message-Id:Date; b=rUNfakcVNKE0sEZTONFWk4J/GExhMHNVVVC/pvbvzcxmzm3Qk9rDe5k+mJuppOKASoPEwvzr8A6Q6oZsv6IznFkrKpV6s3BEP+MfhXCV8WAbNarAVdEwTn5NxPUwR99mAXaSQ89K5clulZnurpm9lEfsbyT+1Eub+k4EWJRbwfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxkCWqnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxkCWqnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E09C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729347353;
	bh=NNYxVFZEknCZGaAEBsvMu3VMXkTNjQ8x7WPrVsUzwks=;
	h=To:Subject:From:Date:From;
	b=XxkCWqnZrtEDLlzrJNxC8Y8DjFRmZWl0dSh7dtkTawCDAXeABnJLhVn8n9yrPqD8l
	 i0kclaOE0beC9EuiROGHGSBK/Xs4asv/IU7oWc12uT4h8NmdRWvDmZKRkcFuGCUf+B
	 7wo6BJlrtH2uPpDMMWn/eiVN+fhiAmX6mAjh4Ac1gvuGGeATTPNFYyI/EXN6DOPiAA
	 Gnm1gSklYV9p/n4FXc5OiUgmPaY4nt3BRf0N/07s0OObjmNl0N99JTdxwhd2Yn0iV3
	 3xolMtHsyUqYI2pCBh0I/2qBXge17nre/6rAC0vJcP6Pe8D7oeSndzyvgRqaw2qxbn
	 XKaGWKnI8Imxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936D6D3C916
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172934735359.22589.13724921563381653581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39485236494fc25ea6604a2e67534380cd331693b1ce93c9c5673663aab77457
Date: Sat, 19 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729347353
