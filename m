Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E82F385D9E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782821914; cv=none; b=eP7BL/2lGQbizEnIIQbqsuDRIbQUeuuzH36F0Q6HblyRPdmD8yboxNUZPd3621qnC1B3vwV843BI5dsmkZiQ9NkCFRuaHLdI7JTM07vwzcJV57DZqeyGxmDS91EitGmXSs2zs0wO6ifBYS4pJJnKKLG6mzFTyp2pbvBdmxgp4BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782821914; c=relaxed/simple;
	bh=AwdP1Myqvj+m1m5/E0nUQxt8OVww3aT1QTPRjny1Eg0=;
	h=To:Subject:From:Message-Id:Date; b=ZouNa9jDvozNBnlWJI1Hj1i27wwuTUHdiPKMKMM+LKNx3V+Nbing0HuuJe7KwDKHvSmgqiqitINN6YCkaV6tRCOpkvyd/PUkRhRSrEX5K9s3JbWaKwpPb2PGafcynsBGxLHHueZXXgcqj9b5RDHQeF/Tfi/QSDiGUxh1GcqxSqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqQmIYF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqQmIYF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18F6C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782821913;
	bh=AwdP1Myqvj+m1m5/E0nUQxt8OVww3aT1QTPRjny1Eg0=;
	h=To:Subject:From:Date:From;
	b=XqQmIYF+DDvn4fvOsKv0MS040IGQ9pqMthoaZOeBPqa9TP+OiOfXl8JHS/JCSweXf
	 OH1gZYlAahD98+PjKmr/KSbc4swk0OxA+og+ESgzHyGTjgrUAfuaUAICWNdnKBl+C1
	 Uah1RnA1CU1JBb/Li1KU6p8CiHnNuv2uxCiHWNqu+n9Wqx2llq6O4Lp7GKO8X6Prnn
	 vDpQuW5j/Fr6zSXQTuXrvmuOKyvejfdAjAAp9OG3QE4Atu+KUYxtXFUnhX9TCpneUY
	 dAYNZQNyf1veZc6OjFoGb2gUpk7lzNVU68IxU8/Jh51atjHqN4pjvK3I8hZlwo0ZtI
	 Stk3rsPuJqPHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9743C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282191368.32755.15240889351372783655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f0a7094074133563b0ff1b0db8fefaa34948de97fa88e3450f93f251bf822e
Date: Tue, 30 Jun 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782821913
