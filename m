Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB6385270
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745505594; cv=none; b=CBHlyuuM4rm904tArQgBGjsuFulevT1LhOzHfWTpc+9Qhz88ZW4rJiCoOxVYkqWxcM0Q2KtFt+6mElVoTTtOiZw6fbcMuMTFsapOYlHS4xPmAY84fHx1+mfiDX7JmRgKERR4Oq5Hrl+GfmJ4nl4XZFwLpKVh+fe9T7J1t5FeQKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745505594; c=relaxed/simple;
	bh=TQLQKjyOAb/ALCldncS4xYSBfwp3WVYrS09cve7OgiM=;
	h=To:Subject:From:Message-Id:Date; b=FJGLQ0v2ggdV2Amh/B1hx3siI9hdHE8aqVdgej0aFW2pKyaNubpWaj8ePK/wVPN9VpBQPFf/4Qvw/3Ws7H2N87FcNK2lYRSuc4SgAmCAwH241dYZSQGDWsy/VcTosAoqV856IqEchW+Z/TPxssvwy9e/f5qMX64wtKw2jGeKZjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YU3ApOgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YU3ApOgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCE8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745505593;
	bh=TQLQKjyOAb/ALCldncS4xYSBfwp3WVYrS09cve7OgiM=;
	h=To:Subject:From:Date:From;
	b=YU3ApOgFGdaZRAuwjWbXxJ/d3XLSohekLUjI+kA2jmPocPfsroaVh+wgQ3AhlycoZ
	 tgEiEkgvz2EZsfNFeLiVpfLVLx+68wvFvIlUOhUfpZVIJdTUsz5fvmG//+8M60zYrG
	 Pma8k1+GZYcL1IhNgS7NIVV0nigEr3zoFDaKClTxVQyUNfWZ1KUOZXU1oljYE40eFk
	 kaBQMyb4lIbRZa8pGac8QO01Dw4Lz2fbCNfrVV17J1tMV+TuBNxfXq/qVTumNI/jCu
	 VLJCuKu59/lNO0TOTS87JZmC8PmRT64r1gn4+USoIIrz0GE4kLslkdNvkrOLXIu+KS
	 mw8ccQ8Bx9dag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E846C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550559357.24208.17999160780724985367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d85e57268335819a9bd010a96dfe03de4939c0f38549ba46142ae490b16db96
Date: Thu, 24 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745505593
