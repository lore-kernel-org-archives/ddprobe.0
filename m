Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D6F392
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 01:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C962CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 01:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692148388;
	bh=Pq+8OWcmNJj5MME6XxGzyQYj2EvaAzRfXC4s6jR6C/w=;
	h=To:Subject:From:Date:From;
	b=rabiFCzj3soyc+j4uGIdgBPS8jMcPmpZxb4BZevHxFpRd5PBL8jCJT8+6ddrelF4w
	 9BhsUWD1dRKgL9n3ypZf7CJ+WmfrQffSghzFOE7pt1puvHRNFQjLmlXiOk/5nLDFHw
	 YK0sXn5OtXE0pOjb5733z9IApxssnyTqI+In+wG5bzXu708B4dywFloWscJwsDk+m5
	 7VRahtkp0PHMxaKbYg2nn8njMYRvGQwS3NeSGtzWyj23+2v0O6HvMcrtlcrJoJ2yg8
	 bO/yQd+ZDow5WDebUip4Y/7tDsoKC9otBLngawaK/em0T4sik+5zcyV0d+UgadSRWE
	 3hPkBeHiD0RcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB21DC0015E
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 01:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169214838869.12053.174922555681465972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b665cef1f844d2fa6f1ce5f57d3e2a119a635561f142428b6f45c5086db9a5
Date: Wed, 16 Aug 2023 01:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692148388
