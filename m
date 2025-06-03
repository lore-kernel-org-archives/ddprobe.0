Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4A44A0C
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748945994; cv=none; b=GXNtpGl0gsld4IDQkUr9QhLCG9oJ6qLVNYSGH1JCVELThviUl+wf87goUuoN6QHf0TSgJXmvkm7tOeoadxMGxIBIYQPHbIuvrEjTLvs/UCRbUu7O3TUZyPBY6Y0tOnFFdVkHSmFm/80U/Bw4+SixJXRvp3CRYxzd/BqnfQx8HiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748945994; c=relaxed/simple;
	bh=/qFHcYEGPnXNl071dB/RUPmfWdrIitiLHblHDCNq6Sk=;
	h=To:Subject:From:Message-Id:Date; b=C9IMSfRpBqBRBpNAvvNzHgg/7vkiltFGTCls/495IQtBsO6xIPxVF0zywZ/FvqUE1ZDSJ1WcT4EIhbkzAd0BkGGfqQlBOERAFVSkfuxR+xaMkpxqHQoeuz6W9obPvekorvL7/498Fyqtz12HgXH0m5qlqpQQKY1++03H3L42uhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTK1vfOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTK1vfOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A069BC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748945993;
	bh=/qFHcYEGPnXNl071dB/RUPmfWdrIitiLHblHDCNq6Sk=;
	h=To:Subject:From:Date:From;
	b=ZTK1vfOFPrsFjcLdPgZZRwSQtWpgqS5iBIFsF6XSHvTURmQy52jMm+ydQnkZrssAn
	 QGmU6pkLr9zaOzrD913fcjoszYbrpdZ46HNJeSi4JgfKT79xJh73MDP4sB6/yVKmdL
	 Th0IX5NNo25J+wZ/8RSfOaQiXpOEPlcABZJ6mRIKsCJoMoQLJZWWWYWNWCL5VowB0v
	 gbEZl9H9SMH4U5ugVrkyj7YFz73jAl3f4HwL8i6D8ju3PMwren+AtszgsNZm54oGjq
	 W+rh5OP5QHcqWbh6VIxwoudXYSZHWvXY+ImzGYfIk9YrvXueQ2OjnXo+eVp07HftXm
	 4YmEygnfcKFnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9092CC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894599358.11521.5060747928122384387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff5f1d68e45ab56e80e612934f41fedf91729630328208f08a0d265d072922c
Date: Tue, 03 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748945993
