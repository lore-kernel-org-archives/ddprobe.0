Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CD514EC5E
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727471754; cv=none; b=nOasrsXuZVrFyjLN3DsKiRS8rw7GcHUiR0CXTIcutjA2kkhoGyOa8VV65uDse0oQ90UnLGP0wUv/TcUzCuxnq5+6oWSpp3WRJ0fYq9Zhup96nILMuYdJbtQTqVbTRZ1WAx7AjgRME7hfxLzk68a8FyEYWoPhBZ33kJtyKBk/ldA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727471754; c=relaxed/simple;
	bh=PrRWHDwwlJ/+ZNC3VP+3Xs8rosG+FWz2pqPARDwXs4w=;
	h=To:Subject:From:Message-Id:Date; b=VdKhJk3XjK5kQPNbTyJ8LVS8pqw+dgPsPPdyaOWNGiQwSpEPV7rSaicholSn7H87tdej8mTkxJkePBzdDWiTmXjEU/CE8UaV3d7Q5gKa/bLlziZ5EjYtcMr+EWpM6nI4lqmM0i9uwSzs+eJ2w+HyKbb3YqpI1fzl0R5u+Ko6sPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFM3TdVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFM3TdVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FCBC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727471753;
	bh=PrRWHDwwlJ/+ZNC3VP+3Xs8rosG+FWz2pqPARDwXs4w=;
	h=To:Subject:From:Date:From;
	b=KFM3TdVaEHRethSItJIv0eyl6PZ8d59vI3vzvY7HDGwtnhIuJXQsdTz5vT7WcfQmH
	 2EOwlrguVyjIYX0uEiLi8UT70mWQGW1wx7nftNANq1kBwsZkOCNp9wAN3SXhJ4/ayO
	 fyUQ1pUtEzsRnkpIk2KZZlm5myAAQM9EEbQiTLeR/P7uRq+yMXUTod8qI0CzKnpsaT
	 2ni2x3KNIA+oUvTWTTDGAHPp2p2WotaQ0vagXW8phN0MDf7+xs1Mmo0FfLU8xbRzLU
	 UCXyNL7JWNp8b6Cq08IA+cvLFBFi5yfTE3IEy7ouLpW90UPOpnVy3GDCvd8EX/HDCr
	 22tm7POC4PSXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A1BCF6480
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747175358.7556.5777359726321746644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be41c5eaeae7d20869d73f37728ed0727d31953d6b57cdb536c9f171f44b1deb
Date: Fri, 27 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727471753
