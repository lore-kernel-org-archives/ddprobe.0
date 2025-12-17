Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183911D6AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765939434; cv=none; b=odCfbKGt+SFlBjnLKvtiaYGGK8I2dGgwCeYNXJ+3mTELFINABbT6yRTEgionBJSG5naReoT83gYrqjxNYCpDf2CC5w+HyMPmA7R301BIj8/XRS0ibF1y+0Kt8mzytKkecwgA6bLd62A9IkXgvXxfhkpxv66e7IQ/iLWRpwQuvXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765939434; c=relaxed/simple;
	bh=IdF+gNIWsOYXcc8cdHLhxqb0ASvJe7Kl//aJ9Hfk7Is=;
	h=To:Subject:From:Message-Id:Date; b=qMCL/mVlY2SpmLJo8WC6LjoX+1nhamxhYBRrhy9CjTZTrPfGUlVCKsMrVQKReYHJ418kV3uC9Yrc7ZeeTePQRcsv0J9ZKu6mFEKZOcLjnCNU9XQYUu2iLY96KmF3zpLD8fKagusV1Ck9HuoYmyBZ6fEZo1tUoBTuA3dhUwSHbug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHKD9ny+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHKD9ny+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23CEC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765939433;
	bh=IdF+gNIWsOYXcc8cdHLhxqb0ASvJe7Kl//aJ9Hfk7Is=;
	h=To:Subject:From:Date:From;
	b=SHKD9ny+f9n/mQbJUq9DSEuejGDJO5wLJmBKK1H4F6DFYOPCECa2HeMfWx+Pbn4+u
	 RDqyIBRv+/dwZIXiBgrPslDz8Ayt+Lu2WtJbAV0OrBUVp97mXooyN2P1C89oGxjlI7
	 tX8HQsueFWHOy1fLpdXEFieKEFui7SfApN75COeu+bcP/YZKCHs5OnSzCJkWCj7vws
	 X4/Et1rYVpZIYR6wQfO7w2eASx+ikU1mBLBbQ3D3eajBUlqc7KMnEEvpZcrZDTXRy2
	 KNSgelwPB20GWR2b2+kb5X1eF6v3XYkGlGPp+E9aRBTgh6Md1N7VxUW8h8B6OSkCQb
	 /HQ5JZMbrwcfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93123D6406D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593943359.19388.994943859898677774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2e8cde5d463ef96e25c9348e5d052e75cb3f18e2e14157075231285c4c6195
Date: Wed, 17 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765939433
