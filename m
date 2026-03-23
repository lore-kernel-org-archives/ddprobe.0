Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3CC40DFB7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774238694; cv=none; b=p8CpVO+UMeB5/BfHlLNA5Khik+estTDlVS/9I36P8pfQG1f52ssIg5mjISdHm+GF+gu6oWSo0307sg4X5PcWQTTR0dkH6Y+bzEbTLTsALL8s7egtabjtUYV+wAbt3emCiV4fYAuY4ii8+Plcgdn4KeIvQMwBspm2M2KMkeVhJhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774238694; c=relaxed/simple;
	bh=M3tZszGBkW/Rd6P+R00KQmDCO3OPAzDSqQkQGwd9rwU=;
	h=To:Subject:From:Message-Id:Date; b=ee4WoIAvAF57TJ9qcdWIy3wbZzJmVXx+elUv6fDnjfIQbX4n6050r1EiFjfx5je2xjubQeZoeo0TXX2AwZIPjxXmM3x9KrQcum5ZJeo5+ZNPafnAXGzGJT44Lp0Z5yALhctUKg8gH7B6oU9A1MQne2wuT2GNoAzD5ODExJ3qygA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kf0XwE8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kf0XwE8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5716C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774238693;
	bh=M3tZszGBkW/Rd6P+R00KQmDCO3OPAzDSqQkQGwd9rwU=;
	h=To:Subject:From:Date:From;
	b=Kf0XwE8CgwruEfZmK8OCs2c4xXzNcM50DqLJZPvIpvmTpOMF/X5UQx3wN8lokg4gZ
	 BAgPF8UFHBZpfJ8XfUemlbJQB3QBWE+8YPSxNS40Cl8mcPy9cLPTtuAadkqUKsgJ4r
	 es6oxPcTQFYAeKPnppsEvXoU52s9giBEMnT5ae33XIhqe006wG1ybizhIZ9QI/hKZb
	 1Bbk0ZbVdwUhbG/d+7gmd5RFtaNejI1V4m/rdME/6ZYv6K++UzDAqSHeCnkVXvU0oA
	 6n25yKsZQEfMY6U9KSNnnrG3pZTWVfGlUOPQNiElNcial6GxYeFh1AD5g/bIofVMSs
	 v/na9f6EZTcOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909C6D58CBE
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423869358.16948.157907934339189816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ed071112663dea31a69193ca771e486a6f0d44ed9ccd0842fa9e2f7614d2c2
Date: Mon, 23 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774238693
