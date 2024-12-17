Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEFE1E130F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734435954; cv=none; b=AZSbeKnjjP480vxXTx35Vg2ByKtnFWmxzpX1Tf1B/kgxy5dXyRbivtV0pTacwdd6x2u6hwTYDlyit51AJFW2mwn+blGO6w4+KETDi3KXXJe/x60O0zcrpF50eO8fugXLZn1qMoohubNQSL37Hk57urdoqJgcYjpnUanVx51KEco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734435954; c=relaxed/simple;
	bh=kd7K7rhx6b43tn1E4Ef+xXwzC3T2Ns7YX87yHMqlTOI=;
	h=To:Subject:From:Message-Id:Date; b=mpc7LVGTm2F0Al0EuVY5wpYxxo2tjPP6ogmGveyAB3fFWXZQ99L6STxd4288WI+xnGDPuL3OVtGZQKCu293bRa2Z6foYs7b6oKs3oIgKKZyHbrgMaIZ2Mlr/vyVUubzAdWyprvtYZOubAPSVUekE1b0Kq+6HBo9aAYa1RCFpAoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMjClXzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMjClXzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CA9C4CED4
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734435953;
	bh=kd7K7rhx6b43tn1E4Ef+xXwzC3T2Ns7YX87yHMqlTOI=;
	h=To:Subject:From:Date:From;
	b=kMjClXzhI1wk3Jlx0AjNWrEO9pBnAf/ucI1VKJMn6PC5wpEvm/nP12V2w5KnzBeLq
	 bpStxUksKYw901W0OLCXP9+UyuPngSzVckbGVZvOphDDSajXWxT/rYvU13SKApZS1N
	 q7SC4+JfVlVJ3Ia7hKQhsfctKshpXIbJERfAw8C95HWIwW8qmkYJkFd3VWY4lWqsPg
	 l+0sYLVjXqqZAZp7AfV/G4J1LxQnP2dtHsL293goSJpUgOFn3ojM4YY5gyegDf5PH7
	 weeDbEihdmiBTGxewqtIooZNdIGvJO2+vZ7fvtjxfU6IgETrBMQ3QeNCI1M5RRdL9z
	 iTc4Gq9cZXwEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C61E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173443595360.2186.3078514400142897824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c49ebc8e440e2c52043b7b54c46a8bb7d7c935b18a5704af35db8c504c29bf
Date: Tue, 17 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734435953
