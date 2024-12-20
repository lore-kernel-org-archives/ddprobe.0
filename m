Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6932C859
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734690954; cv=none; b=mzRJkEhzYB+Fy8VYV2xGYrsFGNQHk+FBjD2OGfFNYTpkVkbQ9IcVe9izZH7WkVIf1rIwMHhGl0XubsQicz2PDp769sa8JQW6KPWKkbXocSuqdNmnW2d/JZmYrF/OGSvvFkA5TfIV838tFyAW01AEmrMv/bnDXnRC67xs/nKFp5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734690954; c=relaxed/simple;
	bh=Umx5KYGisC6ulUYLgAxPz1JUMIIQSs+D9JdG40mDyaU=;
	h=To:Subject:From:Message-Id:Date; b=jJl1g7Pkkd2OX7kJt0ETNQi4F51K/IPmC8l2ZTjqHnfwD7MZSYTc+XNMBjj6W/qtBJtb1pQM84dVsVA8F4qONrjwicaVZCUCzm/5bXM2ovdQb9KFptx/AmeJSe1PIRr9RyE3H2enTiogMxEmBJTl++pThyX6+u5ynan1Zo6reLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHEEuiuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHEEuiuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD88FC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734690953;
	bh=Umx5KYGisC6ulUYLgAxPz1JUMIIQSs+D9JdG40mDyaU=;
	h=To:Subject:From:Date:From;
	b=WHEEuiuGPUV8dJXwUwMW3zY3Vc/dMAVCHE9cxMs62JPj13hcy1+jHWtnkRSlX9Y+v
	 wLwcXXVqDA04KYHkQj/AaFb3f78u9GhcfNS4qisfuhshgFmLR/0Jvhxv/hsQ8NT9KV
	 Vxcr/pfZTIrB7805H7Pa/oiwjBQKLsJQszjsuBMQnlmz5/31uf64tqW3UgHEAFSYGw
	 rIDRT9HMsjwGqBAtFNvfmzo2cauAqLpLNLiB+kggqWSMkKcbDAWmUnj5bM7htksjnW
	 7czYP3YFEXyIvqqDaTJToO1tiEbqXSfDDRckDy5BswUQWBzo9vbJ0oiyzS2dC7q4Mj
	 TdCeM1sVW/FmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC1DE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173469095362.28944.2810376490459948434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a247ef01e30f2da5bbd434654481a6add5a85460c29f62f25eef88df0bfd9b34
Date: Fri, 20 Dec 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734690953
