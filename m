Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0530A3C07B
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708597097; cv=none; b=MU19edwjjhzEuDYqalKhAHlQrFb5PN6cagReiVvbXsq6igYU6Pdrw/sSaucu64K/fLP0Jv4/F49PD8U9tBvusoIpexnuRg7w9tGnzWmjXi8evv2hkoLsew6O9BR6URj9hF47QDQVHB5Zu4cQqaAvv3WLP41+r1gMcETR9ZfwUno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708597097; c=relaxed/simple;
	bh=w46um4ynv24FhXBCLASEUUWzsFdN+5tuaHAtlzSRnUc=;
	h=To:Subject:From:Message-Id:Date; b=ZWMQDgJO2+Jt3a2YXBrZvMXQnToKfHJWVNrSj3dSdeRGKy8PGBuyR9LH/7aD/cbY41fm5LxbNuRe9hMNGC3F3aBRk2+v9DX8da5L0Zk15HobBLGtsnf0avWSSbDNmJ+y9vt4qzKZhdBt5XRpSpnBc2kr4uU8L2oi2+fC2t23Mh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKmYGahw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKmYGahw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A89FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708597096;
	bh=w46um4ynv24FhXBCLASEUUWzsFdN+5tuaHAtlzSRnUc=;
	h=To:Subject:From:Date:From;
	b=IKmYGahwJo3iisDju3EPSmYSs0bBjhds1KE/rINI02/xGErkyMYZiCC5sQ5go4L8O
	 +lNmh0sh0iL+t4RfNh/7wrD9V5wkl3GQxN4iRLgd0Mh5zrMHSqu8CvkmKEUYdCEEZN
	 Fwxq31bAtb+qgQvQ4ONcgqLZlivhF3ypv9fkgUpvjXJh10xBfn11zg4IqWxtoFnwBG
	 AxizJ+rXzpXKmexMgH6QLiIMKzx+8rE51J+GXODZ7to96Z0tOSeHGvxzn8WaxTVxnR
	 51zp4nd+P5oPo73IXqkFWaGCupOFukA8CZYUuCoHmZTXUUH4lL9877Atp2667VhaKo
	 DKA3gGEV9ZNLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD3CC48BEB
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170859709637.6134.8708456972314827529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff4f324abf637bdbbaad6cd308340dcf807e8dfde71aac07a15aa4bcffe99b2
Date: Thu, 22 Feb 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708597096
