Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECCF42B734
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772281494; cv=none; b=eFpzrwZIRwkVaWc2xuC31IVvC6YdvDnVAA6lXeH7QrYwuJBTfJe8BimWGHYu95+t1bAjt3uC4IeEhkJ7wHa6r+ZmirmCrgAOe0y/D1wKfseHP3UHtVHeDyLVP72qxdZXMoewiNOLqeDNjHBTo3ZRKqOFk1Pc5uAzdxPWIIOgTgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772281494; c=relaxed/simple;
	bh=xVx1oC6Fi+clfP370zAqC+QRgfrXJWR3fDWbYRrmsAI=;
	h=To:Subject:From:Message-Id:Date; b=eTNQfL2jNlRU5OZ6VhKMMABWdo/7UoEIkYp1n9m+E8fLxj+KUDbg8U2pUqlgp7v7tc3KsszkZadatrct/wNuw0V92n6FVhFEQmAbTQJSJ2vDwqZ2n+11yzRxZ9eCVv+W2Hyws0+3R5tbQjPevYGoM5hXabaHvzNUk4cJJTikLsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVllynKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVllynKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35E2C19424
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772281493;
	bh=xVx1oC6Fi+clfP370zAqC+QRgfrXJWR3fDWbYRrmsAI=;
	h=To:Subject:From:Date:From;
	b=HVllynKvzWEYF5OlSEUXwXhrqFrJMYpszwagSyPfUjdu1Az77ScC6d9DzyeBHmJAb
	 DpccNUjT4oCieKbJXeGBKdswTbH3uSy2n0ekTiZmgewRQQq0S1Vub4M+t7w8IL/fQK
	 /+hpo8RDT4dRP7jpI91AEVdO5kj9bvsbJixY39wsooPSY8EtEzLrnOj5TwZ/u/uXh9
	 rr7ZCFh4eV8Y6qy1+kyOx0IZ73ZrLPtPjpd/Ir7jEVJWBjY4vqBC+8UMe/050QJq/5
	 PDLx8+av5a2fySTu2nfLHOAWSXj58VhNwqkhBEnJx65rGVek4b2IK6EoVpBf7Uuw81
	 x7JH5MlQE/cMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9149AFEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228149358.30189.6419095975930606303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa61804d327fbe5ea049fb0983a62f749afb45c569ccc666d6559b163de988e
Date: Sat, 28 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772281493
