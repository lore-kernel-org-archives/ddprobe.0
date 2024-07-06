Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4699424B5B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720275923; cv=none; b=C3w5gNyL6b2t9325GRSn66ILUiBHymwx+fM+u70HQZDS3c6xsSl+qxc1iK8lSPgmtTxWAh2G6ueFLD8Y0MKtncRiorDwFWYalo+DXy9i6Pv8/HKVrlEvE0muOV+D9BgTWZ9/M5BA7VXPut0Kdrnsa95Ymlye9TTi93UcyJ3nblk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720275923; c=relaxed/simple;
	bh=ywURDYOUErJL/sBWx3bJgKRUxcnkjGaqfWyVxb42N0Y=;
	h=To:Subject:From:Message-Id:Date; b=kQO+sIk3pO5DCfEOLRw8rwbH5gdF1RmGO/t+VM7uyu5iC517uXkq8Txv8hDtP+dsvAgbweeTXaZWtqQh6pidJg5qd0KDva+LJfT2bWneP24I3wW+OSfeVxQreg753yA2L/hxAPmp0y/QuTsJFNMCeKukglMXzE2hmY1oGWJBcx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMWEVbbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMWEVbbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D372DC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720275922;
	bh=ywURDYOUErJL/sBWx3bJgKRUxcnkjGaqfWyVxb42N0Y=;
	h=To:Subject:From:Date:From;
	b=nMWEVbbtMiGaWhG0gocUlfNwkl0zql0jQR+TFibbzrIDUCntnq6PEDWUpJ0Rh75XH
	 dRDFabdeUOAsxqNIl56kCxWb7o0BvhI4T0g2U93u7RPnXZs1FdZbPjpU5Ge+UTH9Uj
	 V/RGkltBCWUKz9XYCrKXOOymmfoGgsQ7bm9KV3rGLNrNKqojksMkMfxdIr/DizLJvY
	 Gn7iXNDl4UsVdCZ6vDSPduHfWNsW8KSQsZmG1ScDxrDu2hkkH0ebkY8o/gwNTXIJag
	 uIjlzyAVch5vuUxRFEunwVTagwNMF2zDQ3poQ9xLReT4IJZ9oeYV8fuUNhdaHuM5Lz
	 o0okKo4vcMBSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF71DC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172027592277.22962.13749117308925248553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def7cef1daffc12a450ecd158621cd7eca3be62e27c121f8593f0aad93ee4382
Date: Sat, 06 Jul 2024 14:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720275922
