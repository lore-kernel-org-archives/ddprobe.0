Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16749246BA5
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755533994; cv=none; b=uQQmNLAZTKYfy5kS2RZHKA5Fjt3sQ260LJt22W1l2VLnrRvXAUrNYg5BWN5CTchKFMUgBeM2A+7vzJdxtCg3jL0YLjLK3lO2dTBsUhZRUwBthd/jIkqkx/x4AXKzz8YToEeL/rIuKd71CZzgBszcR6QPomjw1utmQYR5kY3g3FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755533994; c=relaxed/simple;
	bh=rSVs3t2Gf7aSZOVNRwHX/H3bLofL0ttwy5Zb2Ekl5AE=;
	h=To:Subject:From:Message-Id:Date; b=gk4Q8+bpqnZOk4AyzLtY2Of3u2huujXNL1RNIjbDDY5Bxr/MUMWouyAbTMO1dQTTv7ezg3IT56q68+e1KNuJq03GqvmLUSE27nDjExdXftdT0QEdXooAJsryjCGoejfwVV7Ri7d0XTmaXm9zcgNhW4898Y4euVHv4QJgOmlugJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoMU8IdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoMU8IdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2134C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755533993;
	bh=rSVs3t2Gf7aSZOVNRwHX/H3bLofL0ttwy5Zb2Ekl5AE=;
	h=To:Subject:From:Date:From;
	b=aoMU8IdNoPBHNIJG18idBxdpI+GbcEomrnEsABFGlnRaIseYZ7+XG8idnO0oEfQUg
	 ZnGgz2dGGSMMIofo838mTZMi/iGuBT5p62uoNfbVabFniMkxhIOoXrVUJ9xP8O/AEH
	 TrKnCcZDnR+IGjKfd6xDE5YqKsZ5QKx4LZLwCJwpWE7KqwexXEUNPsGELsLCfR0e/t
	 /qf3EZbcSQVYzLyHT2ZpbHTINTQsAT9QYKzWvroT7kQROnj9R34jnvuVH+bkFNsaas
	 dpfxjG4sA0qf7HSbyLJVBu7GOMcw+bvismaUlvyL6U6ZoIESV2s4xSFJ5teI8b1cGp
	 oSKoMMiSuUOxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD93CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553399358.14425.1411073293274535932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5b382375019dcf9ac8d417f42004217510984bc1e49eb78766dbc2b14c1625
Date: Mon, 18 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755533993
