Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7292F3E
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747993794; cv=none; b=HSghgZEXfrsTNbRAQIBA5zp8l78i8P6s5dWTgsanIajiOJPW8Zdr/CoVT/WrEPcJuu03qjtYVYYXyW/xIs/65K8jc2flWKttZOyeexYi0fKQCO1QJHxogdZUtz4IZ6vytwqrHrFZpEBXPwchDQ1YqCdlPmf7velRrDeW2/6OcCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747993794; c=relaxed/simple;
	bh=4jMRajviql8dauQY49f8OhvZ28NT8+6XZXJ4TKDsXDc=;
	h=To:Subject:From:Message-Id:Date; b=b4x3o/zb18BQ0zFENvUpKTSl22kjEOoyGErwkuCnSNs5gqoVyCtGEJ1HwuLswOhtLYUpL9AaYIQZddjvlC8WbuvEnRye+vUEk0fZSL3vv80Irj3R1oqvcKGwQ9PoI1pBCD+ddAo0HD2NmZN5jjZQ4PyX6sxVWbQ1Zd8Km2ohZ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=na7cmKyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="na7cmKyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A324DC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747993793;
	bh=4jMRajviql8dauQY49f8OhvZ28NT8+6XZXJ4TKDsXDc=;
	h=To:Subject:From:Date:From;
	b=na7cmKyAaKfNavJcml4fxk0TPnlMG8Cv4HaY0UOCCmIgD8Uh+6W8L2WPi3LlX7tHN
	 tkjYKwv1urInXr1UELT6mRVlPHWq2P2ttTZYEtKABt1UiPPYdW5+SE+w9HnBVdRmZR
	 YnFRkpL1Lux+ItQ42aoVLLztn40RIe3385VJm+DwbruynjTzKDI2YehPWn8oz3Am0+
	 TnuYrluev19xxq0vELdGQd8K+9C84MbnUgAZOMAx8xNxRgw9FRul+D1Urdi2AEXJoV
	 jKXBMpIk0I1uFS2rlPxitgNU1LBD7CK3DzpCMnbqSafz/DnnjGhsN9JctTnYu+/Qcu
	 eHNZC54KCctWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9D1C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799379358.1147.13482412406903437712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7851820c678c67ce92ccc23a2adfd1711cc937feebee2bc6e52a0d14802f23bc
Date: Fri, 23 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747993793
