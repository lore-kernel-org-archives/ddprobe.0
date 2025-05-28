Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3595DD53C
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748412594; cv=none; b=QcCcMLyBE7j0XPuMf1qgM7J9jQgCM3ho4Wz6/6dGC1EyupZlfMkbKfXaaj4IXOkyR1QK8qjsiqlF0lRljvm4D/5B2JONx8K81+M8O3T/jAeOxXg4D0q30X54hpVVD4untE4WpfAf5Pd8AIz+sGuXbak9j4px81/hXnEDOiEbSOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748412594; c=relaxed/simple;
	bh=QQoefQMnITVTJ8zzerV/LhCL47WEjjDH4JdLYOWsfTk=;
	h=To:Subject:From:Message-Id:Date; b=J2WHW5dcRgJ+QzcFm5/ScMQbTagPdwSzjkPPjTPEgEJwZq7ChLk7UlX9TI7HZrnZCx9S4eissjoOIN5NC1yKvVNjl3zJzXERC3MUGxMfNzqEqSnZqBnjLSWlC1A7N+v7rwTJVoqoPpj7nZ2FLLLPkLgQ0v8T0fgCtCT7+bW0gwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh9Vzwqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh9Vzwqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0308C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748412593;
	bh=QQoefQMnITVTJ8zzerV/LhCL47WEjjDH4JdLYOWsfTk=;
	h=To:Subject:From:Date:From;
	b=Mh9VzwqeoM47Y3nviwdaeOZQuV/mUXTpNxSfDEtYHi1n+RnmpviUHPoefDnSyaB7i
	 IgO2qOgt2UXXDwaZbPcxcUGkACHGjDQeFKAZcz25e1ov6ulGBaVQYQNSR/d/a4b9QS
	 WQG7sIrZi8zAMidAgXa4qjbxONuAD4m8EUJSqY7b8+d9TTkaqAxjOm0vOAutNtkQEa
	 N0UnaxwWgikREKSiwLpBIrgM6Fy/j9Y4TqS1TQNFOhEUATXpZ7Lj+cLpdC0NX4VryU
	 rwiVbf1FjeC0xb4S3FtfzRKVxZhPrSA3al+UfZJvc+rckj2ulT4cTpfrPz3dtF9Uvd
	 s9MWAWb5FwlJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA90C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841259358.5698.17752179710363975491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3de09e035067a1dc115f8b466b325c69ae4c309ac12f35379a7cc836556cb07
Date: Wed, 28 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748412593
