Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0669524B3D
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TL6O+cb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78408C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703263696;
	bh=tdC/pjwc9+TkDIPDGAeg7pKQk5bRR6pHv4H8F0bo2uY=;
	h=To:Subject:From:Date:From;
	b=TL6O+cb1lutHgUT90wunncJ8Vtfv//3Ltb8WsRSxV6FQLxLWELzK5tI/QXdzWQmqv
	 fJoxNh+iCK/6V11BCHZ+9LRHSR5IMifW83xvUROdIwwhG4g7XMoEJ5EV4QPQ8+feTQ
	 UF78OumtKL6662aLKEhW6jnFa4rwz1MzdW8zkKxh7aXhLt5bo4xy9+OUXsyqCJVqa4
	 aqJL9n7O4geNxI0/lVONzt3NvzysmO6GZauvUzgZQsq31NrumLk8/jC06SEIIuVl03
	 Bak4hHZTHgHrg8pVTrMZFf1K1NuLagsYwFVH9Ico8udHGtTDc8x0+ql3qiW30MUX9n
	 hVZxw592jVY9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603C8C41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170326369638.15899.1816325791657393548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3056b62fea1f68edba58d187c1e559bd46c84a8e05a30348c0a4d99857dada
Date: Fri, 22 Dec 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703263696
