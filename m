Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E29E330319
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760705994; cv=none; b=JBcCKJkif7Q3d5BhhECbPYDPOtVdGSrYmzTfGGUotHQXn/liSo+R5GrP7M5q3uYCMDHf05bI9YpILMP7L/mHrHIZQaoStPDZybEDiH+rnVClKfORYWDtdWIZti7jIqAZuX9y/8d+utRmfI1JZXkA1SOv/FErkVUOHHdhjHQbWvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760705994; c=relaxed/simple;
	bh=O1gGjmjK3ZDxo20qilSQwDFfdVbw1Zj14KDqW6WcM+I=;
	h=To:Subject:From:Message-Id:Date; b=clZsgsFAFFRzAzE7jvxCk6BZskqyGvKFvVCA0V2Bgu0KtZwH8sP8t1i366q6BYw8Av1KE9CLKsCLv9K2iHN6E3vt1odJUyC4xRJVjf6DSUWGph9hYcaEGm2s5bfHpdplMlpYi1caoi9WiwJAHTvUICEDr1mcoYduXtJxt6Ojy5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUrBMcMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUrBMcMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE6BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760705993;
	bh=O1gGjmjK3ZDxo20qilSQwDFfdVbw1Zj14KDqW6WcM+I=;
	h=To:Subject:From:Date:From;
	b=iUrBMcMWzpR4cDy+oIsJ4YSqY4q6odJQd83Vwv40SqHnJNjDUK8iwpzFhFhvQQ2p1
	 Gm6bOjgJogNT2+QfHBViQXmaXE0ePRUoTSYE/ssDW7O5AEMmt2IXyp3PsJXZ6EYNQk
	 /9MvZlm8poBuGL/W+TJQOdQqK53goNVWgu9uqbRZ2RbZvywINxBxm1r6wJRwYYSqiu
	 30knHPcDPB8ZtUhaBG4G9j91XHZYw5sZz391N5C47XIFm+gOS1fdz35ZnLskJotY48
	 0pZy4u14Jt0ajBfeOWRCiXU2wsFvItyJ1sNejbTRSHJWp1djraaM3Sr0+SPrUt6rmF
	 tIcDqixjfMXQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9589DCCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070599359.9340.7349476534546242370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d813a86f2ed34e97765f04353386a2cf3800a5e4516d534891644652c9d13638
Date: Fri, 17 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760705993
