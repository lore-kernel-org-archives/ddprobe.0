Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAC879CF
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715908943; cv=none; b=e0iBmfslQJStAA5jqiIwFa3aD6MxKYaAbY0X4oHLfRxx6SJXKuxL8HoileWJCpC4vQAmGfOK5szV26fsoRI09Urwr5yGfqk+h4JfziQ8JHpRvEfzYlSfUJruQJX/y4rS0UAWI+uY9uDtgUjmLXJn8DxuanloUN5TMl6pawXLYvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715908943; c=relaxed/simple;
	bh=duE9IdAV+Nn+vhwDuZeyVjeDIZYWYzOM0Ahs5frfzBQ=;
	h=To:Subject:From:Message-Id:Date; b=J4fi/GHZTLgsD7v09vitGUhNK/Bf62tv63OjNgLP5iiGevlUv/MejxHXm4TjrrL2nfXfuA0LQgtqlWHNAwWq88GXy6YjSDGfMXwXkpUJRwntg+eRmX3sOq1Ei7Bp7VfUSX7KZwEJH3ZkEBC4UOgY5LwncdLNmPwsKNg0y7aELwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXJOwI5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXJOwI5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52BDC113CC
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715908942;
	bh=duE9IdAV+Nn+vhwDuZeyVjeDIZYWYzOM0Ahs5frfzBQ=;
	h=To:Subject:From:Date:From;
	b=IXJOwI5V13UpUtnxWpwZBmU8OM+uhVTY/ah6+Wa4HA+NHGo96PusLzzCDc/U79rqB
	 Oby/ANICz2T58LqIUB7K+jTUzaQhIATktnFRK4mTw9wr/LoA/Epf0eal69bZ5mIdKm
	 938mLVZPl0jj7fG5EMhO8iUBPt9C7QnFZtH/2ZkacHeQVVGv2GlBOvZ5gtImdpd/dJ
	 tSWZTel9zPGb3oIZr++UOrC0vUrRlmzaTs7LBANpwDtxidSlQTuWKSRaGDElw7dZ+t
	 W86R24bItQ9UgaBFbg/Q0ETgd6vu5Hr6v2trLW9VYueuw38ygCZp7Ox6wW6AiY7w9G
	 0Z5i0RDiU9miA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27E4C25B74
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171590894278.14733.10615310281578537195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4bfa970ec006d816c06bca1f46441b55f5a17348220f75b626fb73a8ca28963
Date: Fri, 17 May 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715908942
