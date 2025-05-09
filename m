Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BE8235BE2
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746808794; cv=none; b=rCvimeEWJknOwqrE/VLBhGqC3kWx/qDgw9TKtRmY3a/WDgAwodvkHZOE/2Bhiw3fYCZsMyD/ziCoiWB6tkbccCUhOBO/zCnrJxYNxukT+8Qii4JBWOmQw//5W4EnH+YhUTebYm7yd8t2ORYvGxr3iunYlfuVnASqkqFR9f6NDhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746808794; c=relaxed/simple;
	bh=BUqNIDSEDEEnNdF0rLVG3To1HD+I0RMu9jmCbAzz7Jg=;
	h=To:Subject:From:Message-Id:Date; b=kFdrUAyLiVSxMuLhY6zFCsh4bdEPnlJzp1kG3VC3rCucw0Z1eUU/YFW0snREW/OMbujfO8heCJfeqs5VHVsqJFxOhBCXNCtHxj5XjXAxohwxOojqgRRHnPd6bKPQIrTHjkMJZe94vO1WD9ogCrUbwpPH5+QCt9iHXhhdi3EuJzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLfm5iNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLfm5iNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFD3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746808793;
	bh=BUqNIDSEDEEnNdF0rLVG3To1HD+I0RMu9jmCbAzz7Jg=;
	h=To:Subject:From:Date:From;
	b=CLfm5iNY8zp49wDG4EAi/YKTHqoBGEZwvg6at+7tfG6REtPdu/gl2qsLV0iqz0HZJ
	 BwapGbkTo8t0kEwb2etXg2fuVSBYKo6Ra0OLNLUcrEC//EpxZsqXrF9HFiP7RnM3JU
	 CxxZTKP+YSnFrfhrBClOB/m38CuWI7NCtbFjVnqpXIxrYaY2CoGXnmuGXIPp9eJnZH
	 mRBoWAgcqTJdjuydBuh1qvOE11XVcKENFDDmJgivQFDLbvIejhhqVYxf//SToeAqzf
	 5ixVRbPSphB0N07McXNdDVcAOuNtX2qInI3v1C6711x9BdxNq9dbMkrg1WSeDxq2yz
	 USMtnqufFkO0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90731C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680879358.19385.8760461617143768158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59083968befcee35ef26617ce976d2987d16c6096ba20e758419b6f9dd223eb3
Date: Fri, 09 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746808793
