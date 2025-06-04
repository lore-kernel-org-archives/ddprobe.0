Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437B11E5734
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749031194; cv=none; b=JJtG80smTu65MSsRxGulQtFztRooUVrtZpFZRSw0dos2q4DXhG/oSFYwA/GkvxRJ6ACW0mc9T4x/YBtSvG9q1JmIjy0r+lskCNDDQpSydZTn7mILGZ48RzjYelP6psJ2bgCbtjJmsbpCayvTx0cpBLn98XfcC3MG4SRTNaW3lQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749031194; c=relaxed/simple;
	bh=jMRQgHFQjpyGO8xJNQHZhlU5gFWvofzOqf6Ah7MuZYQ=;
	h=To:Subject:From:Message-Id:Date; b=h+ih/T3SpUStiisScVVBYJJ/g2v0I4lgiJPdQBC2mymiJZOlRumyn03tDN/hMUbqVLJQdDbHJEWiLe7PdMALE5+n04Nwh56+AoJa6Q/U5Sl5Jd6M/A9Y3uXelgzgeC+I8hmAJBtn4JM3qkkDBmLvIq8l6jXt2Wz8bzqqpGrj+wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWaDVjuZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWaDVjuZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE75C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749031193;
	bh=jMRQgHFQjpyGO8xJNQHZhlU5gFWvofzOqf6Ah7MuZYQ=;
	h=To:Subject:From:Date:From;
	b=AWaDVjuZL79088WLH85+HHxCC1IAFV5us4Lh5kK3Ro5WkfkSejZFXij/CO9sjvMlb
	 +0w5kn4PAfGd8ZUVpLbOyvm83I+SH6O/yy3OCVF7MkqjjGHjjRWRwF9g0CfJdJDCbq
	 RioiNp+r4NS2vl8qG8CwXavdZOEsTiahjuY5U08ZRPgNWdE5KzCKhiCG+vedH/xqg1
	 5T3uiVq43hETMn/1vYvuZYY3mJvMUC3EWscg2PY6Z5ky+g92+qwCrJB3E7jbUXkY6a
	 gTAD8Xbh+tSOQA10Zz1S0BAI/XS/kXEVv/b1K+wyxw7IIY0LZMm9WSdK1aSUixYVtV
	 pM7tYge5JjxyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD46C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903119358.30968.9006981097579537943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43cbea14a28ed260c10f957a808ee221a74f9eb54241c7d1de30a925f716c58
Date: Wed, 04 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749031193
