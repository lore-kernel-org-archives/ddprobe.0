Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE96F79D2
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajMWrNql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 884A2C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702883896;
	bh=NZgtDIBOpHKU7Rgz/CHboTBzHbEdshjCPT/o1WNNmvU=;
	h=To:Subject:From:Date:From;
	b=ajMWrNqllX2LvoOyzNmsfUzcMNrsddKmyttXb523q4yZNzhP0hb+9Jns93RLzI+z3
	 8ZzQ3Lk7q8xW7Dz7+o7UUVjs9LMcE9Hh413NHO7Yjpi9ESyw6rNld1YplIjpJZs908
	 6CveV5vfqQgF+wpO52D41oOhuye+74bTL6febdnJvroucjTXPb3FN8EkmMjousUIah
	 cIb/pY/XxzCiRG12/erB4YHbbqdgOjJG6jNXaWusrQR2Zy4iZv2f9n0edrbLMLrFgz
	 pnBlrEXaPtxdqgAaORs6bQY6BJHdoFips8NVksmNxKyzmr3ibDxmCpEeXKVv4vum1t
	 0dvMiz3HzAg8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DBBC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170288389640.21381.7820328348737557829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6f66f8a6e4d5afa8cbcc9bc688cb40c0756c7afb442aec061482222741f3e8
Date: Mon, 18 Dec 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702883896
