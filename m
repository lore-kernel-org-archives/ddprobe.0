Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D69319859
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755197995; cv=none; b=F88wLLnTFr/QhkoZLPTSLKd4uh+tRG95WzEyh0XTZMdjkQFJ4g8znnWjKDEyRcgk85HIAKLQNf3n6R1PtSM2j9l5h2y2iO+MkKVe620qhb5K275jW7P5PEnHPLi28mGafKevVi9zdX808set0ejhW08RMCE9t3NN+w3i8JnrZT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755197995; c=relaxed/simple;
	bh=VwKAqKHtaUEeU5I4Hu0WMnI/soXI6+Qy4yLVFv/u6zs=;
	h=To:Subject:From:Message-Id:Date; b=YVt3h18n1qrs70VCLagUzkSgKOcQPIfmeNBqZmYBSkOiChHRdL8sNQtpgqZpqhEaNMLoWr+FXiGYCJ82+haPTyj0fpxUdOMQ6w420kUt6go4H23XiBqRzPJiEELGJT1f5b8L/kTRrAfP6BoecJklZBrSBe4lNBYMwUqrTtP3Gws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sA/Phzsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sA/Phzsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6105C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755197993;
	bh=VwKAqKHtaUEeU5I4Hu0WMnI/soXI6+Qy4yLVFv/u6zs=;
	h=To:Subject:From:Date:From;
	b=sA/PhzslxiHYVorpuZ2VvlEuAs3vpabCVVfY9K2k0dHZ8HMf6fX+hdrXLbkIDf3x2
	 X7xDyprQ4OZXrZ7AZgF/eWcohHtotNlZytLUYWiNG5lx3QhfFrI0InVW7zwxEpOMe3
	 85keKT73jYzYrfbRNLnjhBLHhhBJz/a0xy+xAkHtV8LbjEjP7dmPt9bqUK8cIBVxNx
	 Wgc35QnWZt6HczzMoTtlCsT5fcKykHCO7UspUyhtMhM1NmzOOjwCiVdx90laIOFIFR
	 5yQ2X8rgEn0cigNQCbmyXG6FQV+W05TkcfDIdsETx9n3jA2CBd67ZVXshSFSccesxd
	 lkRy/L7hyu/9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92106CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519799357.15339.1799181187857122041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30842623441138aa7558e23c52c1a2408444dfab03c857fb98714fa7ad2c56f9
Date: Thu, 14 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755197993
