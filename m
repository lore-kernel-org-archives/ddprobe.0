Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167E9CA46
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eywRfGGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BFADC433C8
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698598096;
	bh=wJPkIIiaAbnTznwfCEp5IRAPfS/MzBoeyxGbmmxojQI=;
	h=To:Subject:From:Date:From;
	b=eywRfGGPEszEBJgiFURxhUjzphf2DFfi8g477z+jhtQepxQEqymn7PT+6Gch9Sv1i
	 yMWnA9Oy8qIhyO4IH7WYqzLmp05YQpAaXpyGHgqG6/3tqL2UIzBgodxo9+kQi3MQ/y
	 N7uAL0yT4IP3Iy13DdGQydum2Swv3uQzIm2yEam/5k/K7GqAW+kriOlnnbzC9KRq1s
	 pwBF4zBa/V8kiC9tvhahR1nBpYZ6EU3gMs0LHmnstwW4v79Xqx5FfhZRP7t5Q95WP+
	 wUiw9sOYd3AgIlyWHxEw+3XNkE8S3Ln+VucxRDMym3iEQkgEup2ort6u6DqGktP2kU
	 gmzd6dkMf/9PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F00FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169859809638.31923.2751701763841832381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1bb2c1d43bdb651fa24af9b565782a8cc916876e3ea56d4b701fd4e0b45f99
Date: Sun, 29 Oct 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698598096
