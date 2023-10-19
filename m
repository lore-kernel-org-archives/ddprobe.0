Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6DE63DF
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 06:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPxbXXQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E961AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 06:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697698692;
	bh=t6YmTWk+GR4UKV5luNTSVe35h44k+q+tS3pGrPqdBVw=;
	h=To:Subject:From:Date:From;
	b=CPxbXXQOxhJUOpQApY9wRR5I3vvQGfuQ0RLjklJJErZpEeIdX6TEHNtWdCv7eb+oB
	 kM+fPp/NT21UBYGA2nRIbZsCykzVt8i/IJZOlHQILLh4g0vLGpLgZ6oo86iIiIu8Kv
	 SLst1pQvCWKcwMmDh4RA7N0WqT6o7WNZrG3F01SkXtXnELC7+8tDXxFxU/V1EzrE0I
	 g3cVfnJrkbYX1a/peKZwdOH1thsqPdAB1iavdD4wbQGjhfcom3BLfiWXIfHTTvvQ+4
	 N26j81CLbIXa7rNolRS9tAieMBpI7vMu9Wkrgz9m8zozyoqAJwDYwQSQCzGHvH5qgm
	 +nG9TLG45F+fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8552CDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 06:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169769869281.29279.320328198970376829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6543558d7a3bd08ac521c6e40ae8020462fb9be1818bca47fd09b12bcdac6327
Date: Thu, 19 Oct 2023 06:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697698692
