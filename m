Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08443187E
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqFBflQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82054C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703915296;
	bh=nVi14trOQ7Z3rKu4Yx3htt+mZHd7UIb1Lu4BHBEJ7MQ=;
	h=To:Subject:From:Date:From;
	b=XqFBflQjKS1NGNsZdKLRMlMyMiJyYncs20MFTeKBKwDVdHbST8IIWJyDmEmHElvVD
	 UdoFxc8XPegm+mX4h1XYgRIHv2eW5cyZHO6GriQE/4yCmxGJ0VzapQqCbUiyRxjmui
	 1WsLrCySjoe0vAUCjdds8DDfl41HMf/IyiYGbNLiuv8DzlM7cHR0m0wRamnNsGRVDo
	 tRficFFdzHk1bmqWC4vSwv4+CTx0g/txm5ilzbdXE7GiOvKT8jAoDKNXvCZeTNUUVI
	 WJi+AOhvzj+HmoFtftnxNbrL/WhGcMLU3MdZ3UzGyIday8qxq0FyUQAE94GYZA4C07
	 socj0nQ+QyqUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66790C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170391529639.18432.13250106050749166606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30b5c1e520708a01585f9082e489a8a84805be73ae8b0d1b88e9a6db6cbc15b
Date: Sat, 30 Dec 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703915296
