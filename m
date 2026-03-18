Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71DA1D6193
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773857694; cv=none; b=f+t2J/Jj3zw7RZ7H31ym8WmJzimf9cQbvCUucHaTE6+5f47niWcGnaX0dozxL1egguewMBQKlPKXkX5PUJd8M9WD6fTPmOP0Am2I+p+8x6yKbRNcHLlND9MwJROYVMQocGa3NkxIc3EjQa/xYVNic5yJltTViTqEWfabLQYH9PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773857694; c=relaxed/simple;
	bh=ca4/QxLXbYMUi1/cCFLM6l5JtCKlADMQGVrQWMNTwp8=;
	h=To:Subject:From:Message-Id:Date; b=P8fm/+whNp+VfiPPCfLvX8p6uLWS3fVNE4gmpCkRhrvqL7TF16HXABJnC7LViXsT04437Z1v8FxI06GaI6l2Pa0ORUP/4WPbFcBSaSlVv+cXqRQellabygJJSmcrsjs7hT/fTpyhrxxtspI/P4LB9xWWvHi3xwf5s6cdV/0TkaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxCwz2gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxCwz2gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3F9C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773857693;
	bh=ca4/QxLXbYMUi1/cCFLM6l5JtCKlADMQGVrQWMNTwp8=;
	h=To:Subject:From:Date:From;
	b=sxCwz2gi8uhe3reYDi8xqdfUuQ0mEa3cxs+wQN1spnAwb3R4lNIRb84nuUKdRdJ7t
	 pNk45h5Ium8S+XQj+Rq4l/RBU1sj9eQJFQvsj6RUMm18bytm/e3IhDtsVpkrho9DHX
	 WDk7IpjZfsgdwKr8ukeoc/URp1rYQVCwrtjLauIZpkiJ5HEa/YM+oHQgYdI79hMJ5j
	 okmz0uCU9EbH4H/YCiC8aHsIHBen+itFETiWLXnpAgMpL8AnEyp2xQ+ExbbnaWauXH
	 mqe8iK9lVzRsNkoXIz4xElBazf+w7w3OJe96ckI1n2qkPNA63BvkwGZnV3R+BbAlnB
	 aqvZAiHLxhpwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAD1077603
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385769357.14257.3349627551625529961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44a56d84e40ec28ba4773dbfd3670f8a928ea2d629191fe8d18cba0acbabef0
Date: Wed, 18 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773857693
