Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D035A19938D
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747420193; cv=none; b=A5irZh4TNoOdF0TbWZUrB8YoY0YCk+4xjjOdhJYUVHZ6lJsuOo+58WNl05c64eXt3eIwo1k1EL/J9zBkp/2Djtle5JLSsLagccd62yEWnqzKbw5TLYHRxoDejQqHdoENJv0Cyena5TrH1zjCcSKAbVLsJBXY516fZ2DOlQ2LTFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747420193; c=relaxed/simple;
	bh=dqibxDNFLIxas+cXqHUBRj8xTNnk6NbOeGXDHA4T28Q=;
	h=To:Subject:From:Message-Id:Date; b=NbGRqWzza8EiVlXpIY7Q7j/bAH8MfDnwVhAtNUhCTd9oO9Gq5QkwUz0hcpD7qsF7V+wGkxIKaNE69WesPYVMNxnuD0aAmZ2xbo0oAHnA8Lub6E6UVjFD6bQH4+5F8tBXmvk4Xnv2x3nV1MyhEAu2Q8XN3KX9zYzX1c9OkrdpSLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R98dYa6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R98dYa6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A340DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747420193;
	bh=dqibxDNFLIxas+cXqHUBRj8xTNnk6NbOeGXDHA4T28Q=;
	h=To:Subject:From:Date:From;
	b=R98dYa6JC0hHsQ+k2YzfEJIHPwPlbqpiBSYsOk3bsA2d8goVb0fCvig7bR3VN70fo
	 nb+bjcIxDvRtHwb1rDtehN6KkKn/duwboBXHI/ZeXXCpmM5gn9TLu9zCzm4JFZHQi0
	 h+3NxlhNzuS5ciAsUMq5vJ5ve08JBR5gPRlPUWCmTGvbOkKRndSDmN5tk8aKa/+IFn
	 hd12OQHmUPMLToh9yI2CHDii1fmN3Q/00GRnkanfKUfL3RKwj8tlA2VrvShujt1qPW
	 tFcsHXWRfkBliXXRJ92nSsCRngjORNuFN6rP97p1wyS8SD+qTTI2i7EDMyLhq0w3K8
	 wnoK3qTZ+OjYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C5C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742019358.6003.11662141603527780326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72985e36196173914f1f42851aebc2c9793527cc3681fec715b45218fb192199
Date: Fri, 16 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747420193
