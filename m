Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB047B
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78183C433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665656453;
	bh=OUr6Jo140muN/uBjkCxbs5i+pggg+U1kH5EuDxjWlA0=;
	h=To:Subject:From:Date:From;
	b=h3E/RMjNdxHP8Hi2E/yC3yyqLNWeG/WQgw96/HEvF/9sxxAWhbCWOfrxQNcFdQ9Sx
	 aOp3i/KoDg+pAuE+WYkp5Ht3m2JcngmkG54SELswVG4viCjAOuWpd1XAT7FOXxJo7t
	 7YwllfXNtCsd7unmQKXTGDqQUz5/wVZmF6S3RIZoC09HOQpnnwBdpwmlB9cj2EkJD1
	 4sFZNejHBmdesJX9z0slcjDtMHI0T80hqeiqmrNw2OeXkI3pWAfWDxrcb+LMuUpZ9I
	 pnO0udk6sOpOSBbAKvT5EDmZhPj0JNTYGXRUBKgxSQoQc5ERUl+MS3lxq9Dj8wsKMq
	 vIjLZ9wn3ZI0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600D0C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166565645335.4682.6241377747138599012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fbc020e4025174a1c6550fd11fee60d90b096a1f29d9d378d5810f333221ae
Date: Thu, 13 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665656453
