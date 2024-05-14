Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612631879
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715660543; cv=none; b=bANYlOsBraIuwaXYt8lHjkDUhB9m5v+p1Ugr6pyTf6kCiVIZFq1rFzE6f3d6OtXk2vhu5k2z2IfpDozDxnf+k3kWVTejop9JmzsoHK2Vo0FYn3iakxQw0nwqb9YECB3xv+ammdEkIeCC/du8lzwVK8EanZ6XwUHGwwxVmuVTi60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715660543; c=relaxed/simple;
	bh=xs/sbzGgbjhUwDvsCKKxyYPLnb8uM1OrxL7rOvR0w+U=;
	h=To:Subject:From:Message-Id:Date; b=PGX8L9iFlOghsY6aTCvUp+yry7En1Dd6D78po3PPKYKf5xa/WdWz/qgoqUqNLGsiwj93r5PdMiARGEXpm7Ou9iDq/H7yC5Vc+dYBLGr0B8ntAI/6bpHT+ndAijDL9jwZNKgrUqUFk85LShoxPMgENxKlGVsem5vwvpUQ2yLB3bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xu0tg1+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xu0tg1+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5B0C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715660542;
	bh=xs/sbzGgbjhUwDvsCKKxyYPLnb8uM1OrxL7rOvR0w+U=;
	h=To:Subject:From:Date:From;
	b=Xu0tg1+Hplj7OqFMzlR9aADT+Msac48OJ70Q9s3c8IRWN+gKHt+ZCNmWpiffJNr6X
	 wi0axu6TyXd/a+gzPFAIWm+NMkpLXcZJOOcvKofswdXqSuyu/7KncfQLb+X62i62z9
	 wGlYlItO5JHHycpY+wJnw7Qv2HFI4ZaEMe1TiGFuIvbwGYDo247YnzD16EBis72COt
	 iKdhI5pW4a4i6MISqJC06SUfFaKueAI0m/GlEPqHBEss5T3szbUzkKFrR9rBIf4bD4
	 rqKprp/+NwTmEBT5IB45xeMQFaZeYAYMU62p6j8TT0oES8Ia6e+oMj29yhL9AfA3pT
	 In2C4BpE9P8EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C324CC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566054277.747.7775704950426595883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de946dd4ef96c1c5a134cf254c6ab0df39700aeb40998d01825ba0f2b2e3c320
Date: Tue, 14 May 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715660542
