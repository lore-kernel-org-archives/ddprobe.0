Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D635D2BFC7B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766198633; cv=none; b=ZR38McndWrztAcjikHLylXaWuHDj3nitndpFdntzj7umJWYjQm9FQzel/TU8QWuGjtEHx/zio+JK7TC/KVXSyf4ZF9bS8Mp4I+/pNO1cQ1W3h0196UkmwzTj3laS8ji9d80U9xrqrJM4VhS+tq4I/gKMkN0qrO36w13di8KeO7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766198633; c=relaxed/simple;
	bh=h5UE+O5fxBg+q2o3y3v5QM0UCRLL58At/0JRtn+FEGk=;
	h=To:Subject:From:Message-Id:Date; b=qFfGm0noe2r9R6FD7Y40ZVWxKUeZbvW99wfr3xkCry9c4J0K2NHgu5hoLXwQuxeEGiIsAPCvCUZOo1pYTgBMFfSjnLbkCDAlk7ZRvupC0U5sSGhQL0yWg2pZqOinV9S81ZSs2jn7iGt5KvV56/sRIg60CzgA4eEeCDq+5nSs83k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJGM/UPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJGM/UPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A303AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766198633;
	bh=h5UE+O5fxBg+q2o3y3v5QM0UCRLL58At/0JRtn+FEGk=;
	h=To:Subject:From:Date:From;
	b=aJGM/UPlAeY5PnK0VvORrQyBmRxxuMj0apWsM+t8hw20YR7rLypgrhuVdD5aZO5DF
	 kPUIx89UERjzhOFPbimFmAWmQKYxrQVfDa/aoKcdbOL3yf39wvniwmNs2Z0NcxbD7g
	 2C8EDW8giy9LKU0w/PEsXeqeDA70MNGu2fL25qhtImTEKE1Si0AZg84Jh5+4vPf4qB
	 wHbNXwpij1BzhN+luZtkz/qM0iI5H8YcJqqE8LnvNaSh2E6NJF6e2vKrluiy6RwE8m
	 GPNJTyoxKcisukAQh4S9YXxhV7K73pQElhj9+yTCBqfxRDnaT0Ni9AYI3xxpProwIo
	 X5XcbYRnlIFTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247FE668A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619863357.8130.13380419398923444433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f119a89ae79bf0417de1f36169a792197a29ebf419c9651f13b305bce359d0
Date: Sat, 20 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766198633
