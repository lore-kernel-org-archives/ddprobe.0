Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068C010E1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhsiBVaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A054C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704946096;
	bh=XLk1smwJGDdGk86t9aWXqqi6IZ1QsdHhEG8mkkKZLVw=;
	h=To:Subject:From:Date:From;
	b=JhsiBVaU2MIxtlJBLLJyzFiv5IHw8fsPdx/GNwPNxYAZJLKTlp7U8j47yZPhd7bWA
	 JN6npTokESLU1LgjWX4NhegG0ZRqpT+0GB+pvWrR1uywrz9c3IivNNgBeHIYDjLxQC
	 l/wNrjvLNlYNdCUq2VpgJ+fATAU93kEHfZRmuPZxACp6BXfCFMk2FuR0pydsJzty+X
	 QvyFdds63+uVtq6C/1hXjIawBQ6qD0ty/CTrdWQ/aHeZSXXO+1+q4olE5fcHvw8tV5
	 oVzL3GM3GDgSA6HuRDbPZyP5nV3nIDm7/3R7yQMGwFmBKo3ecBcLJaOYYLJDsmqchQ
	 CeRvfDzxhTTsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6A4C47077
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170494609637.13395.10221519246331788461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8cfe3fad78a44767f0bf90f94fa0b2cbf588e0b2989b6f1acabb1e67029edd
Date: Thu, 11 Jan 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704946096
