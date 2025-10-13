Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271F92C234E
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760333394; cv=none; b=OqKkr1gseDxBDMgRZOfe3gj+/phm/t2ZvslGTrqVs3FqDv/dHOlGtUcf2AoFquu3vMh4swmPG1W5baKUQJ3IoY5zcEK6zq3ChQKJJa/Xava/6Pz7FhiQoj/A+dnsceBHE4TDzwNw2SjGw8qOxKlyGJX7PdtupiNRMsyxbXduRmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760333394; c=relaxed/simple;
	bh=P5lH5z6QsPiQf6OtQbit2KZuxNKtxHPuN880D/GYguY=;
	h=To:Subject:From:Message-Id:Date; b=cYSV5k8pHTu2poKXVuR6rcpj4IlZu9H8wvvJymncr+MB+mFebidXxTOEWqLjdP9CoMx9fRBHRKsdpCbe8jdkgCZx8qX9W+IOn784wuEdsuhy+rA5YIfhZ8iuPiv7q3vLK7M+v6zwJ8rK8d+zPzQ5AYhRXwvFkeJ94ppQGWhMe1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wk8r6u7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wk8r6u7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2384C113D0
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760333393;
	bh=P5lH5z6QsPiQf6OtQbit2KZuxNKtxHPuN880D/GYguY=;
	h=To:Subject:From:Date:From;
	b=Wk8r6u7azlUfKgTgi6nfzqYncywaVs5ZrOk1GQiJa8ekX9hAy4h9eV1F5Znxgd8+0
	 NWl3SBMjtDdjuxslE8D9ikyoRf+Moxqj+sNNbaR4Gxb9flD86EFlqDukfqrtu9Q7fE
	 h1IGKTpfP0CY3UItaCZsmYI/Zp6tQP6o4k8+sjU7mRyLx5x4HAc+mpzWfYjf/bcPuR
	 PMdl0i+56EuFqBmVtQakKxghe8dYPFjzkFJAJyB6KnK9tragk6kmkCObQ0PrXVcfUB
	 zPaOr3Hzj8cNHb4bnlAtH3NHYq5Zj4cT7yz29K7BXcuzT2lCpOY2wZXaOPdducR+zM
	 kc50Ilta4UAvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9197ACCD18C
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033339357.14332.6137495621606011582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69bc7ec3465066ab7dca61635fbc5091cd012fe13425cd51e87470024e11c5dd
Date: Mon, 13 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760333393
