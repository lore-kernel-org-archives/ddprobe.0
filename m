Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2D232C64
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 19:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biW31pCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00DE4C433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 19:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697743093;
	bh=sNZZZPIFxZ5UuGh4gkOWqz5Du/+SRUtH8Wy0bVYHJ5Q=;
	h=To:Subject:From:Date:From;
	b=biW31pCcBF506biRny8k5eGlq3pM5lmLQIZopPte5g1nWftZNRoGnkC7vYVm8Riq1
	 VWreZpVXWzUW4maHbdsKJBxFlflezsKZ/uw4AYMV9OO9XzGZ7QelxxJXjPkYTMmDwx
	 LuAwfosXB+CrG7nQtf1tSehYlodKmKjDqETloMWrV1LVhsznOnZ+sPlE6+AnxVjTzZ
	 yLw/sYcgxX2bGrWkbn5soydkfTLzKqI+cGG6QHVd/lpkVOJ1qodHfQ3H6iijQSUr14
	 CLTAfKOQ5GwiV9wKLGWDGCU70xS1QkQwPOUFZ5zRRzQILBgZrnkyTozGl54UhmyMTp
	 93OpVvLooQbIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4EB4CDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 19:18:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169774309286.5521.10471731757689380098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405237a72a1f263a399c4af7029de178b77bd5e03514523f5381a5883258d993
Date: Thu, 19 Oct 2023 19:18:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697743092
