Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5185F1DF24D
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743184794; cv=none; b=khvSIcGolcWCTmo/9mH1LD0dOTEFbuSD7s9X6Oo8Aj+1QSoI07zLbiB5ZrI1P1IWSeL+6xw9PV4vKziWR733XPkzYI6pSKQ9VmrS2/w8ANmRMHGGUS3tvJDT4ESSGfRgWUyiXIQ8wscngXziQwfNEOZyRQiKs1dc4ze8rzl0N5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743184794; c=relaxed/simple;
	bh=/IrwZn7EMinPxWXpd9pC5G5nihdcot7PSicS/vaw5Fg=;
	h=To:Subject:From:Message-Id:Date; b=Ene7jcpPK2Cc8f/wKRtSghp13Wd7S1UrOQznXKn9vJPelFieoRYpawexJvN0JuxgRbBEf+1mfGc+ZKNGHC3LzgBfO9jM9wGXvMf0je1nqAZJYZVJGUiD0Uaal22QaFlZ3VzrzSZhXr/Ee7nLP7lEuQks9av0JWnsfatw5scPxUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1Q5JihR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1Q5JihR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDA2C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743184793;
	bh=/IrwZn7EMinPxWXpd9pC5G5nihdcot7PSicS/vaw5Fg=;
	h=To:Subject:From:Date:From;
	b=Z1Q5JihRSUBFm1WnlUQU9OQd/+gPJZU/979kpgpNhiMOSByHvTSZ1E4wvicwcAuIs
	 JvleynILyNY3m/WXd5Sw9ISLLLl2K8/Qtl8ak/vg1nVL/iX3Az+1EhW3ETDdR3Y9Rk
	 /bEcXp9u+oBMfVvNOhvvNUeS0axbCAMvT6kuw+UvHMzZkAhqxTVa73+U62YZqjaen6
	 /R7/FZeVQUWEGtDCdEPXn9gx9kNu0jSiekGPo5HkAfc7tB1NoVmw8KYNCIGTqrdzfj
	 G6nPUCC4NdVQL3Y9AwlEcKbbzXgbuanPZr4OGx0f/mdegcPUkdh2OEzqHjhu5iuzTY
	 SFBxvSp1Yrixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A472AC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318479365.31271.10066701505473665346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00206c6e099b3d4d6edf32189ac7e18fbf5156f833f6a7f6c47ce47ef224ef7
Date: Fri, 28 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743184793
